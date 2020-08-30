import 'package:json_theme/json_theme_schemas.dart';

class ButtonBarLayoutBehaviorSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/button_bar_layout_behavior';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'type': 'string',
    'title': 'ButtonBarLayoutBehavior',
    'oneOf': SchemaHelper.enumSchema([
      'constrained',
      'padded',
    ]),
  };
}
