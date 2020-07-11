class FilterQualitySchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/filter_quality';

  static const schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'type': 'string',
    'title': 'FilterQuality',
    'enum': [
      'high',
      'low',
      'medium',
      'none',
    ]
  };
}
