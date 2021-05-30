class Times {
  static const fastest = const Duration(milliseconds: 150);
  static const fast = const Duration(milliseconds: 250);
  static const medium = const Duration(milliseconds: 350);
  static const slow = const Duration(milliseconds: 700);
  static const slower = const Duration(milliseconds: 1000);
}

class Sizes {
  static double hitScale = 1;
  static double get hit => 40 * hitScale;
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;
  static double get offset => 40 * offsetScale;
}

class Fonts {
  static const String raleway = "Raleway";
}

class Strokes {
  static const double thin = 1;
  static const double thick = 4;
}

class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get scale => 1;
  static double get s10 => 10 * scale;
  static double get s11 => 11 * scale;
  static double get s12 => 12 * scale;
  static double get s14 => 14 * scale;
  static double get s16 => 16 * scale;
  static double get s24 => 24 * scale;
  static double get s48 => 48 * scale;
}
