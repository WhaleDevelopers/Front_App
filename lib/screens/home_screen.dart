import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/category_providers.dart';
import '../widgets/etc/error_display_widget.dart';
import '../widgets/etc/loading_indicator_widget.dart';
import '../widgets/home_content_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesNotifierProvider);

    return Scaffold(
      body: categoriesAsync.when(
        data: (categories) => HomeContentWidget(categories: categories),
        loading: () => const LoadingIndicatorWidget(),
        error: (error, stack) => ErrorDisplayWidget(
          errorMessage: error.toString(),
          onRetry: () {
            ref.invalidate(categoriesNotifierProvider);
          },
        ),
      ),
    );
  }
}