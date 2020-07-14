class TextWidthBasisSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/text_width_basis';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'TextWidthBasis',
    'type': 'string',
    'enum': [
      'longestLine',
      'parent',
    ],
  };
}
