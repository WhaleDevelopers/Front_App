import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dev_stu/providers/app_database_provider.dart';
import 'package:drift/drift.dart' hide Column;
import 'package:dev_stu/database/joins.dart';
import 'package:dev_stu/widgets/quiz_history_tile.dart';
import 'package:go_router/go_router.dart';

class UserQuizHistoryScreen extends ConsumerWidget {
  const UserQuizHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dbAsync = ref.watch(appDatabaseProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: '뒤로가기',
          onPressed: () {
            context.go('/'); // 홈 경로로 이동
          },
        ),
        title: const Text('내 퀴즈 기록'),
        actions: [
          dbAsync.when(
            loading: () => Container(),
            error: (e, st) => Container(),
            data: (db) => IconButton(
              icon: const Icon(Icons.delete_forever),
              tooltip: '전체 삭제',
              onPressed: () async {
                final confirm = await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('전체 삭제'),
                    content: const Text('모든 퀴즈 기록을 삭제하시겠습니까?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text('취소'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text('삭제'),
                      ),
                    ],
                  ),
                );
                if (confirm == true) {
                  await db.delete(db.quizResults).go();
                  // 화면 갱신
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('모든 퀴즈 기록이 삭제되었습니다.')),
                  );
                  // setState가 없으므로 FutureBuilder가 자동 갱신됨
                }
                context.go('/');
              },
            ),
          ),
        ],
      ),
      body: dbAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('DB 오류: $e')),
        data: (db) => FutureBuilder<List<TypedResult>>(
          future: db.select(db.quizResults)
            .join(quizResultWithQuestionJoin(db)).get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }
            final results = snapshot.data ?? [];
            if (results.isEmpty) {
              return const Center(child: Text('저장된 문제가 없습니다.'));
            }
            return ListView.separated(
              itemCount: results.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (context, idx) {
                final row = results[idx];
                final quizResult = row.readTable(db.quizResults);
                final question = row.readTable(db.interviewQuestions);
                final category = question.categoryDisplayName ?? '카테고리 없음';
                return QuizHistoryTile(
                  category: category,
                  question: question.question,
                  userAnswer: quizResult.userAnswer,
                  answer: question.answer,
                );
              },
            );
          },
        ),
      ),
    );
  }

}

