import 'package:dev_stu/database/database.dart';
import 'package:drift/drift.dart';

List<Join> quizResultWithQuestionJoin(AppDatabase db) {
  return [
    innerJoin(
      db.interviewQuestions,
      db.interviewQuestions.id.equalsExp(db.quizResults.questionId),
    ),
  ];
}
