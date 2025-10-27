import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/category/category.dart';
import '../api/repositories/repository_providers.dart';

part 'category_providers.g.dart';

@riverpod
class CategoriesNotifier extends _$CategoriesNotifier {
  @override
  Future<List<Category>> build() async {
    final repository = ref.read(categoryRepositoryProvider);
    return repository.loadCategories();
  }
}


// Selected Category Provider
@riverpod
class SelectedCategory extends _$SelectedCategory {
  @override
  Category? build() {
    return null; // 초기값은 null
  }

  void select(Category category) {
    state = category;
  }
}
