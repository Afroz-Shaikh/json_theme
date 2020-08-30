import 'package:json_theme/json_theme_schemas.dart';

class AxisSchema {
  static const id = 'https://peifferinnovations.com/json_theme/schemas/axis';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'type': 'string',
    'title': 'Axis',
    'oneOf': SchemaHelper.enumSchema([
      'horizontal',
      'vertical',
    ]),
  };
}
