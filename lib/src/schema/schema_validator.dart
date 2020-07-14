import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_class/json_class.dart';
import 'package:json_schema/json_schema.dart';
import 'package:json_theme/json_theme_schemas.dart';
import 'package:meta/meta.dart';

/// Schema validator that can validate the JSON Theme objects while also being
/// able to be extended to also perform validation against schemas that include
/// JSON Theme objects.
class SchemaValidator {
  /// Validates the given [schemaId] against the given [value].  If the
  /// optional [validate] parameter is not [true] then this will no-op and
  /// immediately return with [true].
  ///
  /// It should be noted that this validation is a relatively expensive
  /// operation.  For that reason, this defaults to performing the validation
  /// when in the debug build and skipping validation for release builds.  This
  /// optimization can be overridden by setting [debugOnly] to [false].
  static bool validate({
    bool debugOnly = true,
    @required String schemaId,
    @required dynamic value,
    bool validate = true,
  }) {
    var result = true;
    if (validate == true) {
      if (debugOnly == true) {
        assert(() {
          result = _validate(
            schemaId: schemaId,
            value: value,
          );

          return true;
        }());
      } else {
        result = _validate(
          schemaId: schemaId,
          value: value,
        );
      }
    }

    return result;
  }

  static bool _validate({
    @required String schemaId,
    @required dynamic value,
  }) {
    var result = true;
    RefProvider refProvider;
    refProvider = (String ref) {
      var schema = SchemaCache().getSchema(ref);
      if (schema == null) {
        throw Exception('Unable to find schema: $ref');
      }

      return JsonSchema.createSchema(
        schema,
        refProvider: refProvider,
      );
    };

    var schemaData = SchemaCache().getSchema(schemaId);
    assert(schemaData != null, 'Cannot find schema: $schemaId');
    var jsonSchema = JsonSchema.createSchema(
      schemaData,
      refProvider: refProvider,
    );

    var errors = jsonSchema.validateWithErrors(value is Map
        ? JsonClass.removeNull(Map<String, dynamic>.from(value))
        : value);
    if (errors?.isNotEmpty == true) {
      result = false;
      var errorStr =
          'Value: ${json.encode(value)}\n\nSchema Error: $schemaId\n';
      for (var error in errors) {
        errorStr += ' * [${error.schemaPath}]: ${error.message}\n';
      }

      FlutterError.reportError(
        FlutterErrorDetails(
          exception: Exception(errorStr),
        ),
      );
    }

    return result;
  }
}
