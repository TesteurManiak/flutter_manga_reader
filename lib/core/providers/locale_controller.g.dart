// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fallbackLocaleHash() => r'12e24bb4410adeef193b21b0ff3448cd027c9dd6';

/// See also [fallbackLocale].
@ProviderFor(fallbackLocale)
final fallbackLocaleProvider = Provider<Locale>.internal(
  fallbackLocale,
  name: r'fallbackLocaleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fallbackLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FallbackLocaleRef = ProviderRef<Locale>;
String _$systemLocaleHash() => r'000f79e944cfabc529668f53fde80d6b61112fe7';

/// See also [systemLocale].
@ProviderFor(systemLocale)
final systemLocaleProvider = Provider<Locale>.internal(
  systemLocale,
  name: r'systemLocaleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$systemLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SystemLocaleRef = ProviderRef<Locale>;
String _$localeControllerHash() => r'f73adb84b8a4e763227e30b367a42fe0bfe2cfa2';

/// See also [LocaleController].
@ProviderFor(LocaleController)
final localeControllerProvider =
    NotifierProvider<LocaleController, Locale>.internal(
      LocaleController.new,
      name: r'localeControllerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$localeControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LocaleController = Notifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
