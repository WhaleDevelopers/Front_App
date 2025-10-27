import 'dart:developer';
import 'dart:io';
import 'package:dev_stu/database/converters.dart';
import 'package:drift/native.dart';
import 'package:drift/drift.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables.dart';
import 'package:dev_stu/models/InterviewQuestion/interview_question.dart';

part 'database.g.dart';

/* 데이터베이스 설정 */
@DriftDatabase(tables: [InterviewQuestions, QuizResults]) // 사용할 테이블 등록
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection()) {
    log('AppDatabase 생성됨', name: 'AppDatabase');
  }

  @override
  int get schemaVersion => 1; // DB 구조 변경 시 이 버전 +1
}


// 데이터베이스 파일 연결을 설정하는 부분
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}