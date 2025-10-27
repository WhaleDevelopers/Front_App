import 'package:dev_stu/utils/difficulty_manager.dart';
import 'package:dev_stu/providers/interview_quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:dev_stu/providers/quiz_result_repository_provider.dart';
import 'package:dev_stu/models/QuizResult/quiz_result.dart';


class QuizScreen extends ConsumerStatefulWidget {
  final String? categoryId;
  final int size;
  
  const QuizScreen({
    super.key,
    required this.categoryId,
    this.size = 5,
  });

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  final TextEditingController _answerController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  List<String?> _answers = [];
  bool _isSaving = false;

  @override
  Widget build(BuildContext context) {
  final quizAsync = ref.watch(interviewQuizProvider(widget.categoryId ?? '', widget.size));

    return Scaffold(
      appBar: AppBar(
        title: Text('면접 문제'), 
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: quizAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('로딩 중 오류: $e')),
        data: (quizs) {
          if (quizs.isEmpty) {
            return const Center(child: Text('문제가 없습니다.'));
          }
          
          if (_answers.length != quizs.length) {
            _answers = List<String?>.filled(quizs.length, null, growable: false);
            _answerController.text = _answers[_currentIndex] ?? '';
          }
          if (_currentIndex >= quizs.length) {
            _currentIndex = 0;
          }

          final current = quizs[_currentIndex];
          final progress = (_currentIndex + 1) / quizs.length;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '문제 ${_currentIndex + 1}/${quizs.length}',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: current.difficulty.difficultyColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                current.difficulty.difficultyText,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Category
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    current.categoryDisplayName ?? '',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),

                // Question
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '문제',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              current.question,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(height: 1.6),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              '답변',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: _answerController,
                              maxLines: 8,
                              decoration: InputDecoration(
                                hintText: '여기에 답변을 작성하세요...',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Theme.of(
                                  context,
                                ).colorScheme.surface,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Previous / Next (or Submit)
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _currentIndex > 0 ? () => setState(() => _currentIndex--) : null,
                        child: const Text('이전'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_isSaving) return;

                          // save current answer
                          _answers[_currentIndex] = _answerController.text;

                          if (_currentIndex < quizs.length - 1) {
                            setState(() {
                              _currentIndex++;
                              _answerController.text = _answers[_currentIndex] ?? '';
                            });
                          } else {
                            // Submit: save all answers to DB
                            setState(() => _isSaving = true);
                            // Run save in async microtask
                            () async {
                              try {
                                final repo = await ref.read(quizResultRepositoryProvider.future);
                                // QuizResult 리스트 생성 및 저장
                                final results = <QuizResult>[];
                                for (var i = 0; i < quizs.length; i++) {
                                  final q = quizs[i];
                                  final userAnswer = _answers[i] ?? '';
                                  final result = QuizResult(question: q, userAnswer: userAnswer);
                                  await repo.saveQuizResult(result);
                                  results.add(result);
                                }

                                // 결과 화면으로 이동하며 기록 전달
                                context.pushNamed('quiz_result', extra: results);
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('저장 중 오류가 발생했습니다: $e')),
                                );
                              } finally {
                                if (mounted) setState(() => _isSaving = false);
                              }
                            }();
                          }
                        },
                        child: Text(_currentIndex >= quizs.length - 1 ? '제출' : '다음'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _answerController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
