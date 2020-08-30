import 'package:json_theme/json_theme_schemas.dart';

class TextDecorationSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/text_decoration';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'TextDecoration',
    'type': 'string',
    'oneOf': SchemaHelper.enumSchema([
      'lineThrough',
      'none',
      'overline',
      'underline',
    ]),
  };
}
