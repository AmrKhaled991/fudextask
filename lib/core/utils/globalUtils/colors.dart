import 'dart:ui';

class ColorManager {
  static final Map<String, Color> _colorMap = {
    "أحمر": Color(0xFFFF0000),
    "أصفر": Color(0xFFFBBF24),
    "أخضر": Color(0xFF159912),
    "أزرق": Color(0xFF0000FF),
    "برتقالي": Color(0xFFFFA500),
    "أسود": Color(0xFF000000),
    "أبيض": Color(0xFFFFFFFF),
    "بيج": Color(0xFFC09B7F),
  };

  static Color? getColor(String colorName) {
    return _colorMap[colorName];
  }
}