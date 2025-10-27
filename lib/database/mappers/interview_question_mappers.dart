import 'package:dev_stu/database/database.dart' as db_schema;
import 'package:dev_stu/models/InterviewQuestion/interview_question.dart' as iq_model;
import 'package:dev_stu/models/QuizResult/quiz_result.dart' as qr_model;
import 'package:drift/drift.dart';


extension InterviewQuestionToCompanion on iq_model.InterviewQuestion {
  db_schema.InterviewQuestionsCompanion toCompanion() {
    return db_schema.InterviewQuestionsCompanion(
      id: Value(id),
      categoryId: Value(categoryId),
      question: Value(question),
      answer: Value(answer),
      difficulty: Value(difficulty),
      tags: Value(tags),
      usageCount: Value(usageCount),
      lastUsedAt: Value(lastUsedAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      categoryDisplayName: Value(categoryDisplayName),
    );
  }
}

extension QuizResultToCompanion on qr_model.QuizResult {
  db_schema.QuizResultsCompanion toQuizResultsCompanion() {
    return db_schema.QuizResultsCompanion.insert(
      userAnswer: userAnswer,
      questionId: question.id,
    );
  }
}

iq_model.InterviewQuestion interviewQuestionFromRow(dynamic row) {
  if (row is iq_model.InterviewQuestion) return row;

  try {
    final json = (row as dynamic).toJson();
    return iq_model.InterviewQuestion.fromJson(Map<String, dynamic>.from(json));
  } catch (e) {
    throw StateError('Cannot convert DB row to InterviewQuestion: $e');
  }
}

qr_model.QuizResult quizResultFromRow(dynamic row, iq_model.InterviewQuestion question) {
  final userAnswer = (row as dynamic).userAnswer as String;
  return qr_model.QuizResult(
    question: question,
    userAnswer: userAnswer,
  );
}
