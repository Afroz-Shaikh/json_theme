import 'package:json_theme/json_theme_schemas.dart';

class TextInputActionSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/text_input_action';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'TextInputAction',
    'type': 'string',
    'oneOf': SchemaHelper.enumSchema([
      'continueAction',
      'done',
      'emergencyCall',
      'go',
      'join',
      'newline',
      'next',
      'none',
      'previous',
      'route',
      'search',
      'send',
      'unspecified',
    ]),
  };
}
