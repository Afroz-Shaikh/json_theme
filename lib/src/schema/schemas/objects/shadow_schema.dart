import 'package:json_theme/json_theme_schemas.dart';

class ShadowSchema {
  static const id = 'https://peifferinnovations.com/json_theme/schemas/shadow';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'Shadow',
    'type': 'object',
    'required': [
      'color',
    ],
    'properties': {
      'blurRadius': SchemaHelper.numberSchema,
      'color': SchemaHelper.objectSchema(ColorSchema.id),
      'offset': SchemaHelper.objectSchema(OffsetSchema.id),
    },
  };
}
