import 'package:flutter/material.dart';
import '../../models/category/category.dart';

class CategorySelectionWidget extends StatelessWidget {
  final List<Category> categories;
  final Category? selectedCategory;
  final Function(Category?) onCategorySelected;

  const CategorySelectionWidget({
    super.key,
    required this.categories,
    this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ...categories.map(
          (category) => FilterChip(
            label: Text(category.displayName),
            selected: selectedCategory == category,
            onSelected: (selected) {
              onCategorySelected(selected ? category : null);
            },
          ),
        ),
      ],
    );
  }
}