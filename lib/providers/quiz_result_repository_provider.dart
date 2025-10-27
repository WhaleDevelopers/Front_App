import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dev_stu/repositories/quiz_result_repository.dart';
import 'package:dev_stu/providers/app_database_provider.dart';

part 'quiz_result_repository_provider.g.dart';

@riverpod
Future<QuizResultRepository> quizResultRepository(QuizResultRepositoryRef ref) async {
  // 1. 다른 프로바이더 비동기 값 가져오기
  final db = await ref.watch(appDatabaseProvider.future);
  
  // 2. Repository 인스턴스 생성
  final repo = QuizResultRepository(db);

  return repo;
}