import 'package:json_theme/json_theme_schemas.dart';

class NavigationDestinationLabelBehaviorSchema {
  static const id =
      'https://peiffer-innovations.github.io/flutter_json_schemas/schemas/json_theme/navigation_destination_label_behavior.json';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': id,
    r'$comment':
        'https://api.flutter.dev/flutter/material/NavigationDestinationLabelBehavior-class.html',
    'title': 'NavigationDestinationLabelBehavior',
    'type': 'string',
    'oneOf': SchemaHelper.enumSchema([
      'alwaysHide',
      'alwaysShow',
      'onlyShowSelected',
    ]),
  };
}
