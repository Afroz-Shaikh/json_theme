import 'package:json_theme/json_theme_schemas.dart';

class BlendModeSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/blend_mode';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'type': 'string',
    'title': 'BlendMode',
    'oneOf': SchemaHelper.enumSchema([
      'clear',
      'color',
      'colorBurn',
      'colorDodge',
      'darken',
      'difference',
      'dst',
      'dstATop',
      'dstIn',
      'dstOut',
      'dstOver',
      'exclusion',
      'hardLight',
      'hue',
      'lighten',
      'luminosity',
      'modulate',
      'multiply',
      'overlay',
      'plus',
      'saturation',
      'screen',
      'softLight',
      'src',
      'srcATop',
      'srcIn',
      'srcOut',
      'srcOver',
      'xor',
    ]),
  };
}
