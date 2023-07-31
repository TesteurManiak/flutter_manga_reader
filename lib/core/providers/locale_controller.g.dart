// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fallbackLocaleHash() => r'48a5656c6633b58c0d51ff60d8c061c17536fdba';

/// See also [fallbackLocale].
@ProviderFor(fallbackLocale)
final fallbackLocaleProvider = AutoDisposeProvider<Locale>.internal(
  fallbackLocale,
  name: r'fallbackLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fallbackLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FallbackLocaleRef = AutoDisposeProviderRef<Locale>;
String _$systemLocaleHash() => r'48417f412252355b26df9b5e364aa9e6a596a3f1';

/// See also [systemLocale].
@ProviderFor(systemLocale)
final systemLocaleProvider = AutoDisposeProvider<Locale>.internal(
  systemLocale,
  name: r'systemLocaleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$systemLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SystemLocaleRef = AutoDisposeProviderRef<Locale>;
String _$localeControllerHash() => r'4d53ed3aa606819fc3429aa09818ac665f8b7ac6';

/// See also [LocaleController].
@ProviderFor(LocaleController)
final localeControllerProvider =
    AutoDisposeNotifierProvider<LocaleController, Locale>.internal(
  LocaleController.new,
  name: r'localeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LocaleController = AutoDisposeNotifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
