import 'package:dev_stu/api/controller/categories/category_controller.dart';
import 'package:dev_stu/api/controller/interview_quizs/interview_quiz_controller.dart';
import 'package:dev_stu/api/repositories/interview_quiz_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'category_repository.dart';
import '../api_client.dart';
import '../controller/preset/preset_controller.dart';

/* ---------------------Controller Providers--------------------- */
/// PresetController Provider
final presetControllerProvider = Provider<PresetController>((ref) {
  return PresetController(ApiClient.instance.dio);
});

/// CategoryController Provider
final categoryControllerProvider = Provider<CategoryController>((ref) {
  return CategoryController(ApiClient.instance.dio);
});

/// InterviewQuizController Provider
final interviewQuizControllerProvider = Provider<InterviewQuizController>((ref) {
  return InterviewQuizController(ApiClient.instance.dio);
});

/* ---------------------Repository Providers--------------------- */
/// CategoryRepository Provider
final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  final categoryController = ref.read(categoryControllerProvider);
  return CategoryRepository(categoryController);
});

/// InterviewQuizRepository Provider
final interviewQuizRepositoryProvider = Provider<InterviewQuizRepository>((ref) {
  final interviewQuizController = ref.read(interviewQuizControllerProvider);
  return InterviewQuizRepository(interviewQuizController);
});