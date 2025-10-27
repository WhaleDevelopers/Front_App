import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dev_stu/api/repositories/repository_providers.dart';
import 'package:dev_stu/models/InterviewQuestion/interview_question.dart';

part 'interview_quiz_provider.g.dart';

@riverpod
class InterviewQuiz extends _$InterviewQuiz {
  @override
  Future<List<InterviewQuestion>> build(String categoryId, int size) async {
    final repository = ref.read(interviewQuizRepositoryProvider);
    return repository.fetchInterviewQuizsByCategoryWithSize(categoryId, size);
  }
}