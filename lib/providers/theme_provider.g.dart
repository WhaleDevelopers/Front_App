// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeDataHash() => r'588bfad775b7b342982b1d0ed6a9821ac867bf23';

/// See also [themeData].
@ProviderFor(themeData)
final themeDataProvider = AutoDisposeProvider<ThemeData>.internal(
  themeData,
  name: r'themeDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ThemeDataRef = AutoDisposeProviderRef<ThemeData>;
String _$themeNotifierHash() => r'd97948264c1ae2c1a1650655957b890c29579065';

/// See also [ThemeNotifier].
@ProviderFor(ThemeNotifier)
final themeNotifierProvider =
    AutoDisposeNotifierProvider<ThemeNotifier, ThemeType>.internal(
  ThemeNotifier.new,
  name: r'themeNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ThemeNotifier = AutoDisposeNotifier<ThemeType>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
