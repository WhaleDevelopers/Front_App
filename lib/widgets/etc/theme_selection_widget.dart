import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/theme_provider.dart';

class ThemeSelectionWidget extends ConsumerWidget {
  const ThemeSelectionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeNotifierProvider);
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.palette,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  '테마 선택',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: ThemeType.values.map((themeType) {
                final isSelected = currentTheme == themeType;
                final themeName = themeNames[themeType]!;

                return FilterChip(
                  label: Text(themeName),
                  selected: isSelected,
                  onSelected: (selected) {
                    if (selected) {
                      ref.read(themeNotifierProvider.notifier).setTheme(themeType);
                    }
                  },
                  avatar: isSelected
                      ? const Icon(Icons.check, size: 16)
                      : null,
                );
              }).toList(),
            ),
            const SizedBox(height: 12),
            // 빠른 테스트 버튼
            Center(
              child: TextButton.icon(
                onPressed: () {
                  ref.read(themeNotifierProvider.notifier).nextTheme();
                },
                icon: const Icon(Icons.skip_next),
                label: const Text('다음 테마로 빠른 전환'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
