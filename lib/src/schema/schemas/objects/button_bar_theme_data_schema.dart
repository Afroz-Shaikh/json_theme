import 'package:json_theme/json_theme_schemas.dart';

class ButtonBarThemeDataSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/button_bar_theme_data';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'ButtonThemeData',
    'type': 'object',
    'properties': {
      'alignment': SchemaHelper.objectSchema(MainAxisAlignmentSchema.id),
      'buttonAlignedDropdown': SchemaHelper.boolSchema,
      'buttonHeight': SchemaHelper.numberSchema,
      'buttonMinWidth': SchemaHelper.numberSchema,
      'buttonPadding': SchemaHelper.objectSchema(EdgeInsetsGeometrySchema.id),
      'buttonTextTheme': SchemaHelper.objectSchema(ButtonTextThemeSchema.id),
      'layoutBehavior':
          SchemaHelper.objectSchema(ButtonBarLayoutBehaviorSchema.id),
      'mainAxisSize': SchemaHelper.objectSchema(MainAxisSizeSchema.id),
      'overflowDirection':
          SchemaHelper.objectSchema(VerticalDirectionSchema.id),
    },
  };
}
