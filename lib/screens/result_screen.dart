import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:dev_stu/models/QuizResult/quiz_result.dart';
import 'home_screen.dart';
import 'quiz_screen.dart';


class ResultScreen extends ConsumerStatefulWidget {
  const ResultScreen({super.key});

  @override
  ConsumerState<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final state = GoRouterState.of(context);
    final results = state.extra is List<QuizResult> ? state.extra as List<QuizResult> : <QuizResult>[];

    return Scaffold(
      appBar: AppBar(
        title: const Text('결과'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('제출한 답변', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            Expanded(
              child: results.isEmpty
                  ? const Center(child: Text('기록이 없습니다.'))
                  : ListView.separated(
                      itemCount: results.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (context, idx) {
                        final r = results[idx];
                        return ExpansionTile(
                          title: Text(r.question.question),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('내 답변', style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 4),
                                  Text(r.userAnswer),
                                  const SizedBox(height: 12),
                                  Text('정답', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                                  const SizedBox(height: 4),
                                  Text(r.question.answer, style: const TextStyle(color: Colors.green)),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.goNamed('home');
                    },
                    child: const Text('홈으로'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
