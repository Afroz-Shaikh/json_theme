import 'package:json_theme/json_theme_schemas.dart';

class InputDecorationThemeSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_theme/input_decoration_theme.json';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'IconThemeData',
    'type': 'object',
    'properties': {
      'alignLabelWithHint': SchemaHelper.boolSchema,
      'border': SchemaHelper.objectSchema(InputBorderSchema.id),
      'contentPadding': SchemaHelper.objectSchema(EdgeInsetsGeometrySchema.id),
      'disabledBorder': SchemaHelper.objectSchema(InputBorderSchema.id),
      'enabledBorder': SchemaHelper.objectSchema(InputBorderSchema.id),
      'errorBorder': SchemaHelper.objectSchema(InputBorderSchema.id),
      'errorMaxLines': SchemaHelper.numberSchema,
      'errorStyle': SchemaHelper.objectSchema(TextStyleSchema.id),
      'fillColor': SchemaHelper.objectSchema(ColorSchema.id),
      'filled': SchemaHelper.boolSchema,
      'floatingLabelBehavior':
          SchemaHelper.objectSchema(FloatingLabelBehaviorSchema.id),
      'focusColor': SchemaHelper.objectSchema(ColorSchema.id),
      'focusedBorder': SchemaHelper.objectSchema(InputBorderSchema.id),
      'focusedErrorBorder': SchemaHelper.objectSchema(InputBorderSchema.id),
      'helperMaxLines': SchemaHelper.numberSchema,
      'helperStyle': SchemaHelper.objectSchema(TextStyleSchema.id),
      'hintStyle': SchemaHelper.objectSchema(TextStyleSchema.id),
      'hoverColor': SchemaHelper.objectSchema(ColorSchema.id),
      'isDense': SchemaHelper.boolSchema,
      'labelStyle': SchemaHelper.objectSchema(TextStyleSchema.id),
      'prefixStyle': SchemaHelper.objectSchema(TextStyleSchema.id),
      'suffixStyle': SchemaHelper.objectSchema(TextStyleSchema.id),
    },
  };
}
