import 'package:drift/drift.dart';
import 'package:dev_stu/models/InterviewQuestion/interview_question.dart';
import 'converters.dart';

/* InterviewQuestion 테이블 */
@UseRowClass(InterviewQuestion)
class InterviewQuestions extends Table {
  TextColumn     get id                 => text()();
  TextColumn     get categoryId         => text()();
  TextColumn     get question           => text()();
  TextColumn     get answer             => text()();
  TextColumn     get difficulty         => text()();
  TextColumn     get tags               => text().map(const TagsConverter())(); // TypeConverter 사용
  IntColumn      get usageCount         => integer()();
  DateTimeColumn get lastUsedAt         => dateTime()();
  DateTimeColumn get createdAt          => dateTime()();
  DateTimeColumn get updatedAt          => dateTime()();
  TextColumn     get categoryDisplayName => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}


/* QuizResults 테이블 */
class QuizResults extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userAnswer => text()();

  // 외래 키(Foreign Key) 설정
  TextColumn get questionId => text().references(InterviewQuestions, #id)();
}
