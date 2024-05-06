/// Enumerates the supported image extensions.
enum ImageExtension {
  jpg({'jpg', 'jpeg'}),
  png({'png'}),
  gif({'gif'}),
  webp({'webp'}),
  bmp({'bmp'}),
  wbmp({'wbmp'});

  const ImageExtension(this.extensions);

  factory ImageExtension.parse(String value) {
    for (final ext in ImageExtension.values) {
      if (ext.extensions.contains(value)) {
        return ext;
      }
    }
    throw FormatException('Invalid image extension: $value');
  }

  final Set<String> extensions;

  static ImageExtension? tryParse(String? value) {
    try {
      if (value == null) return null;
      return ImageExtension.parse(value);
    } on FormatException {
      return null;
    }
  }

  @override
  String toString() => extensions.first;
}
