class AxisSchema {
  static const id = 'https://peifferinnovations.com/json_theme/schemas/axis';

  static const schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'type': 'string',
    'title': 'Axis',
    'enum': [
      'horizontal',
      'vertical',
    ],
  };
}
