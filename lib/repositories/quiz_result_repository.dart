import 'dart:async';

import 'package:dev_stu/database/database.dart' as db_schema;
import 'package:dev_stu/models/QuizResult/quiz_result.dart' as model;
import 'package:dev_stu/models/InterviewQuestion/interview_question.dart' as iq_model;
import 'package:drift/drift.dart';
import 'package:dev_stu/database/mappers/interview_question_mappers.dart';

class QuizResultRepository {
  final db_schema.AppDatabase database;

  QuizResultRepository(this.database);

  Future<int> saveQuizResult(model.QuizResult result) async {
    final iq_model.InterviewQuestion q = result.question;

    return await database.transaction(() async {
      await database.into(database.interviewQuestions).insertOnConflictUpdate(q.toCompanion());

      final resCompanion = result.toQuizResultsCompanion();
      final id = await database.into(database.quizResults).insert(resCompanion);
      return id;
    });
  }

  // 2. getAllResults join 사용
  Future<List<model.QuizResult>> getAllResults({int limit = 200}) async {
    final query = database.select(database.quizResults).join([
      innerJoin(
        database.interviewQuestions,
        database.interviewQuestions.id.equalsExp(database.quizResults.questionId),
      ),
    ])
      ..orderBy([OrderingTerm.desc(database.quizResults.id)])
      ..limit(limit);

    final rows = await query.get();

    return rows.map((row) {
      final quizResultRow = row.readTable(database.quizResults);
      final iqRow = row.readTable(database.interviewQuestions);

      final question = interviewQuestionFromRow(iqRow);
      return quizResultFromRow(quizResultRow, question);
    }).toList();
  }

  Future<void> deleteById(int id) async => await (database.delete(database.quizResults)..where((t) => t.id.equals(id))).go();

  Future<void> clearAll() async => await database.delete(database.quizResults).go();

}