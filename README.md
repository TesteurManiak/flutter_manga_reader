# Flutter Manga Reader

A cross-platform manga reader.

## Getting Started

This project contains 3 flavors:

- dev
- staging
- prod

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor dev --target lib/main_dev.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor prod --target lib/main_prod.dart
```

## Working with Translations

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_guide_link].

### Adding Strings

1. To add a new localizable string, open the `app_fr.arb` file at `lib/l10n/arb/app_fr.arb`.

```arb
{
    "@@locale": "fr",
    "counterAppBarTitle": "Compteur"
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "fr",
    "counterAppBarTitle": "Compteur",
    "helloWorld": "Bonjour le monde"
}
```

3. Generate the strings

```sh
$ flutter gen-l10n
```

4. Use the new string

```dart
import 'package:flutter_manga_reader/core/core.dart';

@override
Widget build(BuildContext context) {
  final strings = context.strings;
  return Text(strings.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
<key>CFBundleLocalizations</key>
<array>
    <string>en</string>
    <string>fr</string>
</array>
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_fr.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter"
}
```

`app_fr.arb`

```arb
{
    "@@locale": "fr",
    "counterAppBarTitle": "Compteur"
}
```

## Code generation

This project uses multiple code generation tools:

- [flutter_gen_runner][flutter_gen_runner_link]: To generate type-safe access to assets
- [freezed][freezed_link]: To reduce the boilerplate when writing override of `toString`, `==`, `hashCode` and `copyWith` methods
- [go_router_builder][go_router_builder_link]: To generate type-safe routes
- [json_serializable][json_serializable_link]: To generate type-safe JSON serialization/deserialization
- [theme_tailor][theme_tailor_link]: To reduce the boilerplate when writing `ThemeExtensions`s

All of these tools will generate code when running the following command:

```sh
$ dart run build_runner build
```

## Generating Icons

This project uses [flutter_launcher_icons][flutter_launcher_icons_link] to generate the app icons. To modify the icons follow these steps:

1. Replace the `icon.png` file at `assets/launcher_icons/icon.png` with your own icon. And edit the options in `pubspec.yaml` how you see fit.

2. Run the following command:

```sh
$ dart run flutter_launcher_icons
```

## Credits

* [MangaDex][manga_dex]: For providing the API used in this project

[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_guide_link]: https://docs.flutter.dev/accessibility-and-localization/internationalization
[flutter_gen_runner_link]: https://pub.dev/packages/flutter_gen_runner
[freezed_link]: https://pub.dev/packages/freezed
[go_router_builder_link]: https://pub.dev/packages/go_router_builder
[json_serializable_link]: https://pub.dev/packages/json_serializable
[theme_tailor_link]: https://pub.dev/packages/theme_tailor
[flutter_launcher_icons_link]: https://pub.dev/packages/flutter_launcher_icons
[flutter_native_splash_link]: https://pub.dev/packages/flutter_native_splash
[manga_dex]: https://api.mangadex.org