<p align="center">
    <img src="assets/splash/splash.png" alt="Flutter Manga Reader icon" height="200" style="border-radius:16px">
</p>

<h1 align="center">Flutter Manga Reader</h1>

A cross-platform manga reader built with Flutter.

This app is a Flutter clone of [Tachiyomi][tachiyomi] mainly to provide an iOS version of the app.

**This project is still a work in progress.**

## Screenshots

_WIP_

| Views | Light | Dark | Pure Dark |
| --- | --- | --- | --- |
| Library | <img src="screenshots/light/library.png" height="400"> | <img src="screenshots/dark/library.png" height="400"> | <img src="screenshots/pure_dark/library.png" height="400"> |
| Explorer | <img src="screenshots/light/explorer.png" height="400"> | <img src="screenshots/dark/explorer.png" height="400"> | <img src="screenshots/pure_dark/explorer.png" height="400"> |
| Details | <img src="screenshots/light/details.png" height="400">  | <img src="screenshots/dark/details.png" height="400">  | <img src="screenshots/pure_dark/details.png" height="400"> |
| Reader | <img src="screenshots/light/reader.png" height="400"> | <img src="screenshots/dark/reader.png" height="400"> | <img src="screenshots/pure_dark/reader.png" height="400"> |
| History | <img src="screenshots/light/history.png" height="400"> | <img src="screenshots/dark/history.png" height="400"> | <img src="screenshots/pure_dark/history.png" height="400"> |

## Supported sources

_WIP_

| Source | Supported |
| --- | --- |
| Asura Scans | :red_circle: |
| DragonTea | :red_circle: |
| EarlyManga | :red_circle: |
| MangaBat | :white_check_mark: |
| MangaDex | :white_check_mark: |
| Mangahere | :red_circle: |
| Mangairo | :white_check_mark: |
| Mangakakalot | :white_check_mark: |
| Manganato | :white_check_mark: |
| Webtoons.com | :red_circle: |


## Features

_WIP_

* Import manga & chapters from a Tachiyomi/Mihon backup
* Global update of chapters
* Webtoon and paginated manga reading
* Download manga chapters for offline reading
* Reading history
* Language support for English and French
* Light and dark themes
* Pure Dark theme

## Run the app

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

## Generating Splash Screens

This project uses [flutter_native_splash][flutter_native_splash_link] to generate the splash screens. To modify the splash screens follow these steps:

1. Replace the `splash.png` file at `assets/splash/splash.png` with your own splash screen. And edit the options in `pubspec.yaml` how you see fit.

2. Run the following command:

```sh
$ dart run flutter_native_splash:create
```

## Download

You can download the nightly build from [here](https://github.com/TesteurManiak/flutter_manga_reader/actions/workflows/nightly.yml).

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Credits

* [Tachiyomi][tachiyomi]: For providing the inspiration for this project
* [MangaDex][manga_dex]: For providing the API used in this project

## Disclaimer

The developer of this application does not have any affiliation with the content providers available.

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
[tachiyomi]: https://tachiyomi.org