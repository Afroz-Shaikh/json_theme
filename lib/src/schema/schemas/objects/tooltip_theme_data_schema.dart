import 'package:json_theme/json_theme_schemas.dart';

class TooltipThemeDataSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_theme/tooltip_theme_data.json';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'TooltipThemeData',
    'type': 'object',
    'properties': {
      'excludeFromSemantics': SchemaHelper.boolSchema,
      'height': SchemaHelper.numberSchema,
      'margin': SchemaHelper.objectSchema(EdgeInsetsGeometrySchema.id),
      'padding': SchemaHelper.objectSchema(EdgeInsetsGeometrySchema.id),
      'preferBelow': SchemaHelper.boolSchema,
      'showDuration': SchemaHelper.numberSchema,
      'verticalOffset': SchemaHelper.numberSchema,
      'waitDuration': SchemaHelper.numberSchema,
    },
  };
}
