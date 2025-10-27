import 'package:freezed_annotation/freezed_annotation.dart';

import '../InterviewQuestion/interview_question.dart';

part 'quiz_result.freezed.dart';
part 'quiz_result.g.dart';

@freezed
class QuizResult with _$QuizResult{

  const factory QuizResult({
    required InterviewQuestion question,
    required String userAnswer,
  }) = _QuizResult;

  factory QuizResult.fromJson(Map<String, dynamic> json) => _$QuizResultFromJson(json);
}
