class AlignmentSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/alignment';

  static const schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'type': 'string',
    'title': 'Alignment',
    'enum': [
      'bottomCenter',
      'bottomLeft',
      'bottomRight',
      'center',
      'centerLeft',
      'centerRight',
      'topCenter',
      'topLeft',
      'topRight',
    ]
  };
}
