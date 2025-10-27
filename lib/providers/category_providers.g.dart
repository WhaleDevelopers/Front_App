// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoriesNotifierHash() =>
    r'd0a078d515efa1a723ef464463728b6a7a9be353';

/// See also [CategoriesNotifier].
@ProviderFor(CategoriesNotifier)
final categoriesNotifierProvider = AutoDisposeAsyncNotifierProvider<
    CategoriesNotifier, List<Category>>.internal(
  CategoriesNotifier.new,
  name: r'categoriesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$categoriesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CategoriesNotifier = AutoDisposeAsyncNotifier<List<Category>>;
String _$selectedCategoryHash() => r'55ee320213f817cfe497640e1894b1f3f63a1f2f';

/// See also [SelectedCategory].
@ProviderFor(SelectedCategory)
final selectedCategoryProvider =
    AutoDisposeNotifierProvider<SelectedCategory, Category?>.internal(
  SelectedCategory.new,
  name: r'selectedCategoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCategoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCategory = AutoDisposeNotifier<Category?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
