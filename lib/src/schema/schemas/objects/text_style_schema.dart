import 'package:json_theme/json_theme_schemas.dart';

class TextStyleSchema {
  static const id =
      'https://peifferinnovations.com/json_theme/schemas/text_style';

  static final schema = {
    r'$schema': 'http://json-schema.org/draft-06/schema#',
    r'$id': '$id',
    'title': 'TextStyle',
    'type': 'object',
    'properties': {
      'backgroundColor': SchemaHelper.objectSchema(ColorSchema.id),
      'color': SchemaHelper.objectSchema(ColorSchema.id),
      'decoration': SchemaHelper.objectSchema(TextDecorationSchema.id),
      'decorationColor': SchemaHelper.objectSchema(ColorSchema.id),
      'decorationStyle':
          SchemaHelper.objectSchema(TextDecorationStyleSchema.id),
      'decorationThickness': SchemaHelper.numberSchema,
      'fontFamily': SchemaHelper.stringSchema,
      'fontFamilyFallback': {
        'type': 'array',
        'items': SchemaHelper.stringSchema,
      },
      'fontFeatures': SchemaHelper.arraySchema(FontFeatureSchema.id),
      'fontSize': SchemaHelper.numberSchema,
      'fontStyle': SchemaHelper.objectSchema(FontStyleSchema.id),
      'fontWeight': SchemaHelper.objectSchema(FontWeightSchema.id),
      'height': SchemaHelper.numberSchema,
      'inherit': SchemaHelper.boolSchema,
      'letterSpacking': SchemaHelper.numberSchema,
      'locale': SchemaHelper.objectSchema(LocaleSchema.id),
      'package': SchemaHelper.stringSchema,
      'shadows': SchemaHelper.arraySchema(ShadowSchema.id),
      'textBaseline': SchemaHelper.objectSchema(TextBaselineSchema.id),
      'wordSpacing': SchemaHelper.numberSchema,
    },
  };
}
