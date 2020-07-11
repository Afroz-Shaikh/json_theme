class TextBaselineSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/text_baseline';

  static const schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'TextBaseline',
    'type': 'string',
    'enum': [
      'alphabetic',
      'ideographic',
    ],
  };
}
