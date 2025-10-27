import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../providers/category_providers.dart';
import 'etc/theme_selection_widget.dart';
import '../widgets/category/category_selection_widget.dart';
import '../models/category/category.dart';
import 'user_quiz_history_button.dart';

class HomeContentWidget extends ConsumerWidget {
  final List<Category> categories;
  
  const HomeContentWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);
    
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 메인 카드
            _buildMainCard(context),
            const SizedBox(height: 32),

            // 테마 선택 위젯
            const ThemeSelectionWidget(),
            const SizedBox(height: 16),

            // 내 퀴즈 기록 이동 버튼 (별도 위젯)
            userQuizHistoryButton(context),
            const SizedBox(height: 16),   

            // 카테고리 선택 섹션
            _buildCategorySection(context, ref, selectedCategory),
            const SizedBox(height: 32),
            
            // 퀴즈 시작 버튼
            _buildQuizStartButton(context, ref, selectedCategory),
            const SizedBox(height: 16),
            
            // 선택된 카테고리 표시
            if (selectedCategory != null)
              _buildSelectedCategoryText(context, selectedCategory),
          ],
        ),
      ),
    );
  }

  Widget _buildMainCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Icon(
              Icons.quiz,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              '면접 문제 풀기',
              style: Theme.of(context).textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Spring, Java, JPA 등의 면접 문제를 풀어보세요!\n5개의 문제를 풀고 나면 정답과 비교할 수 있습니다.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium
                  ?.copyWith(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(BuildContext context, WidgetRef ref, Category? selectedCategory) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '카테고리 선택',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        CategorySelectionWidget(
          categories: categories,
          selectedCategory: selectedCategory,
          onCategorySelected: (category) {
            ref.read(selectedCategoryProvider.notifier).state = category;
          },
        ),
      ],
    );
  }

  Widget _buildQuizStartButton(BuildContext context, WidgetRef ref, Category? selectedCategory) {
    return ElevatedButton(
      //Routing
      onPressed: () {
        if (selectedCategory == null) {
          Fluttertoast.showToast(
            msg: '카테고리를 선택해주세요.',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            backgroundColor: Theme.of(context).colorScheme.primary,
            textColor: Colors.white,
            fontSize: 16.0,
            timeInSecForIosWeb: 2,
          );
          return;
        } 
        context.pushNamed(
          'quiz',
          pathParameters: {
            'id': selectedCategory.id,
          },
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: const Text('퀴즈 시작'),
    );
  }

  Widget _buildSelectedCategoryText(BuildContext context, Category selectedCategory) {
    return Text(
      '선택된 카테고리: ${selectedCategory.displayName}',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}