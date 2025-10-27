// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $InterviewQuestionsTable extends InterviewQuestions
    with TableInfo<$InterviewQuestionsTable, InterviewQuestion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InterviewQuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _questionMeta =
      const VerificationMeta('question');
  @override
  late final GeneratedColumn<String> question = GeneratedColumn<String>(
      'question', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String> answer = GeneratedColumn<String>(
      'answer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<String> difficulty = GeneratedColumn<String>(
      'difficulty', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> tags =
      GeneratedColumn<String>('tags', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($InterviewQuestionsTable.$convertertags);
  static const VerificationMeta _usageCountMeta =
      const VerificationMeta('usageCount');
  @override
  late final GeneratedColumn<int> usageCount = GeneratedColumn<int>(
      'usage_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastUsedAtMeta =
      const VerificationMeta('lastUsedAt');
  @override
  late final GeneratedColumn<DateTime> lastUsedAt = GeneratedColumn<DateTime>(
      'last_used_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _categoryDisplayNameMeta =
      const VerificationMeta('categoryDisplayName');
  @override
  late final GeneratedColumn<String> categoryDisplayName =
      GeneratedColumn<String>('category_display_name', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        categoryId,
        question,
        answer,
        difficulty,
        tags,
        usageCount,
        lastUsedAt,
        createdAt,
        updatedAt,
        categoryDisplayName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'interview_questions';
  @override
  VerificationContext validateIntegrity(Insertable<InterviewQuestion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    context.handle(_tagsMeta, const VerificationResult.success());
    if (data.containsKey('usage_count')) {
      context.handle(
          _usageCountMeta,
          usageCount.isAcceptableOrUnknown(
              data['usage_count']!, _usageCountMeta));
    } else if (isInserting) {
      context.missing(_usageCountMeta);
    }
    if (data.containsKey('last_used_at')) {
      context.handle(
          _lastUsedAtMeta,
          lastUsedAt.isAcceptableOrUnknown(
              data['last_used_at']!, _lastUsedAtMeta));
    } else if (isInserting) {
      context.missing(_lastUsedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('category_display_name')) {
      context.handle(
          _categoryDisplayNameMeta,
          categoryDisplayName.isAcceptableOrUnknown(
              data['category_display_name']!, _categoryDisplayNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InterviewQuestion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InterviewQuestion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id'])!,
      question: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question'])!,
      answer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer'])!,
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}difficulty'])!,
      tags: $InterviewQuestionsTable.$convertertags.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags'])!),
      usageCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}usage_count'])!,
      lastUsedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_used_at'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      categoryDisplayName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}category_display_name']),
    );
  }

  @override
  $InterviewQuestionsTable createAlias(String alias) {
    return $InterviewQuestionsTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $convertertags =
      const TagsConverter();
}

class InterviewQuestionsCompanion extends UpdateCompanion<InterviewQuestion> {
  final Value<String> id;
  final Value<String> categoryId;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> difficulty;
  final Value<List<String>> tags;
  final Value<int> usageCount;
  final Value<DateTime> lastUsedAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<String?> categoryDisplayName;
  final Value<int> rowid;
  const InterviewQuestionsCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.tags = const Value.absent(),
    this.usageCount = const Value.absent(),
    this.lastUsedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.categoryDisplayName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  InterviewQuestionsCompanion.insert({
    required String id,
    required String categoryId,
    required String question,
    required String answer,
    required String difficulty,
    required List<String> tags,
    required int usageCount,
    required DateTime lastUsedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.categoryDisplayName = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        categoryId = Value(categoryId),
        question = Value(question),
        answer = Value(answer),
        difficulty = Value(difficulty),
        tags = Value(tags),
        usageCount = Value(usageCount),
        lastUsedAt = Value(lastUsedAt),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<InterviewQuestion> custom({
    Expression<String>? id,
    Expression<String>? categoryId,
    Expression<String>? question,
    Expression<String>? answer,
    Expression<String>? difficulty,
    Expression<String>? tags,
    Expression<int>? usageCount,
    Expression<DateTime>? lastUsedAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? categoryDisplayName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (question != null) 'question': question,
      if (answer != null) 'answer': answer,
      if (difficulty != null) 'difficulty': difficulty,
      if (tags != null) 'tags': tags,
      if (usageCount != null) 'usage_count': usageCount,
      if (lastUsedAt != null) 'last_used_at': lastUsedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (categoryDisplayName != null)
        'category_display_name': categoryDisplayName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  InterviewQuestionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? categoryId,
      Value<String>? question,
      Value<String>? answer,
      Value<String>? difficulty,
      Value<List<String>>? tags,
      Value<int>? usageCount,
      Value<DateTime>? lastUsedAt,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<String?>? categoryDisplayName,
      Value<int>? rowid}) {
    return InterviewQuestionsCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      difficulty: difficulty ?? this.difficulty,
      tags: tags ?? this.tags,
      usageCount: usageCount ?? this.usageCount,
      lastUsedAt: lastUsedAt ?? this.lastUsedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      categoryDisplayName: categoryDisplayName ?? this.categoryDisplayName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<String>(difficulty.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(
          $InterviewQuestionsTable.$convertertags.toSql(tags.value));
    }
    if (usageCount.present) {
      map['usage_count'] = Variable<int>(usageCount.value);
    }
    if (lastUsedAt.present) {
      map['last_used_at'] = Variable<DateTime>(lastUsedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (categoryDisplayName.present) {
      map['category_display_name'] =
          Variable<String>(categoryDisplayName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InterviewQuestionsCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('difficulty: $difficulty, ')
          ..write('tags: $tags, ')
          ..write('usageCount: $usageCount, ')
          ..write('lastUsedAt: $lastUsedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('categoryDisplayName: $categoryDisplayName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QuizResultsTable extends QuizResults
    with TableInfo<$QuizResultsTable, QuizResult> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuizResultsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userAnswerMeta =
      const VerificationMeta('userAnswer');
  @override
  late final GeneratedColumn<String> userAnswer = GeneratedColumn<String>(
      'user_answer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _questionIdMeta =
      const VerificationMeta('questionId');
  @override
  late final GeneratedColumn<String> questionId = GeneratedColumn<String>(
      'question_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES interview_questions (id)'));
  @override
  List<GeneratedColumn> get $columns => [id, userAnswer, questionId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quiz_results';
  @override
  VerificationContext validateIntegrity(Insertable<QuizResult> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_answer')) {
      context.handle(
          _userAnswerMeta,
          userAnswer.isAcceptableOrUnknown(
              data['user_answer']!, _userAnswerMeta));
    } else if (isInserting) {
      context.missing(_userAnswerMeta);
    }
    if (data.containsKey('question_id')) {
      context.handle(
          _questionIdMeta,
          questionId.isAcceptableOrUnknown(
              data['question_id']!, _questionIdMeta));
    } else if (isInserting) {
      context.missing(_questionIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuizResult map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuizResult(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userAnswer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_answer'])!,
      questionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question_id'])!,
    );
  }

  @override
  $QuizResultsTable createAlias(String alias) {
    return $QuizResultsTable(attachedDatabase, alias);
  }
}

class QuizResult extends DataClass implements Insertable<QuizResult> {
  final int id;
  final String userAnswer;
  final String questionId;
  const QuizResult(
      {required this.id, required this.userAnswer, required this.questionId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_answer'] = Variable<String>(userAnswer);
    map['question_id'] = Variable<String>(questionId);
    return map;
  }

  QuizResultsCompanion toCompanion(bool nullToAbsent) {
    return QuizResultsCompanion(
      id: Value(id),
      userAnswer: Value(userAnswer),
      questionId: Value(questionId),
    );
  }

  factory QuizResult.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuizResult(
      id: serializer.fromJson<int>(json['id']),
      userAnswer: serializer.fromJson<String>(json['userAnswer']),
      questionId: serializer.fromJson<String>(json['questionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userAnswer': serializer.toJson<String>(userAnswer),
      'questionId': serializer.toJson<String>(questionId),
    };
  }

  QuizResult copyWith({int? id, String? userAnswer, String? questionId}) =>
      QuizResult(
        id: id ?? this.id,
        userAnswer: userAnswer ?? this.userAnswer,
        questionId: questionId ?? this.questionId,
      );
  QuizResult copyWithCompanion(QuizResultsCompanion data) {
    return QuizResult(
      id: data.id.present ? data.id.value : this.id,
      userAnswer:
          data.userAnswer.present ? data.userAnswer.value : this.userAnswer,
      questionId:
          data.questionId.present ? data.questionId.value : this.questionId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('QuizResult(')
          ..write('id: $id, ')
          ..write('userAnswer: $userAnswer, ')
          ..write('questionId: $questionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userAnswer, questionId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuizResult &&
          other.id == this.id &&
          other.userAnswer == this.userAnswer &&
          other.questionId == this.questionId);
}

class QuizResultsCompanion extends UpdateCompanion<QuizResult> {
  final Value<int> id;
  final Value<String> userAnswer;
  final Value<String> questionId;
  const QuizResultsCompanion({
    this.id = const Value.absent(),
    this.userAnswer = const Value.absent(),
    this.questionId = const Value.absent(),
  });
  QuizResultsCompanion.insert({
    this.id = const Value.absent(),
    required String userAnswer,
    required String questionId,
  })  : userAnswer = Value(userAnswer),
        questionId = Value(questionId);
  static Insertable<QuizResult> custom({
    Expression<int>? id,
    Expression<String>? userAnswer,
    Expression<String>? questionId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userAnswer != null) 'user_answer': userAnswer,
      if (questionId != null) 'question_id': questionId,
    });
  }

  QuizResultsCompanion copyWith(
      {Value<int>? id, Value<String>? userAnswer, Value<String>? questionId}) {
    return QuizResultsCompanion(
      id: id ?? this.id,
      userAnswer: userAnswer ?? this.userAnswer,
      questionId: questionId ?? this.questionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userAnswer.present) {
      map['user_answer'] = Variable<String>(userAnswer.value);
    }
    if (questionId.present) {
      map['question_id'] = Variable<String>(questionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuizResultsCompanion(')
          ..write('id: $id, ')
          ..write('userAnswer: $userAnswer, ')
          ..write('questionId: $questionId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $InterviewQuestionsTable interviewQuestions =
      $InterviewQuestionsTable(this);
  late final $QuizResultsTable quizResults = $QuizResultsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [interviewQuestions, quizResults];
}

typedef $$InterviewQuestionsTableCreateCompanionBuilder
    = InterviewQuestionsCompanion Function({
  required String id,
  required String categoryId,
  required String question,
  required String answer,
  required String difficulty,
  required List<String> tags,
  required int usageCount,
  required DateTime lastUsedAt,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<String?> categoryDisplayName,
  Value<int> rowid,
});
typedef $$InterviewQuestionsTableUpdateCompanionBuilder
    = InterviewQuestionsCompanion Function({
  Value<String> id,
  Value<String> categoryId,
  Value<String> question,
  Value<String> answer,
  Value<String> difficulty,
  Value<List<String>> tags,
  Value<int> usageCount,
  Value<DateTime> lastUsedAt,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<String?> categoryDisplayName,
  Value<int> rowid,
});

final class $$InterviewQuestionsTableReferences extends BaseReferences<
    _$AppDatabase, $InterviewQuestionsTable, InterviewQuestion> {
  $$InterviewQuestionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$QuizResultsTable, List<QuizResult>>
      _quizResultsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.quizResults,
              aliasName: $_aliasNameGenerator(
                  db.interviewQuestions.id, db.quizResults.questionId));

  $$QuizResultsTableProcessedTableManager get quizResultsRefs {
    final manager = $$QuizResultsTableTableManager($_db, $_db.quizResults)
        .filter((f) => f.questionId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_quizResultsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$InterviewQuestionsTableFilterComposer
    extends Composer<_$AppDatabase, $InterviewQuestionsTable> {
  $$InterviewQuestionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get question => $composableBuilder(
      column: $table.question, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get answer => $composableBuilder(
      column: $table.answer, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String> get tags =>
      $composableBuilder(
          column: $table.tags,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<int> get usageCount => $composableBuilder(
      column: $table.usageCount, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastUsedAt => $composableBuilder(
      column: $table.lastUsedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryDisplayName => $composableBuilder(
      column: $table.categoryDisplayName,
      builder: (column) => ColumnFilters(column));

  Expression<bool> quizResultsRefs(
      Expression<bool> Function($$QuizResultsTableFilterComposer f) f) {
    final $$QuizResultsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.quizResults,
        getReferencedColumn: (t) => t.questionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$QuizResultsTableFilterComposer(
              $db: $db,
              $table: $db.quizResults,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$InterviewQuestionsTableOrderingComposer
    extends Composer<_$AppDatabase, $InterviewQuestionsTable> {
  $$InterviewQuestionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get question => $composableBuilder(
      column: $table.question, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get answer => $composableBuilder(
      column: $table.answer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get usageCount => $composableBuilder(
      column: $table.usageCount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastUsedAt => $composableBuilder(
      column: $table.lastUsedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryDisplayName => $composableBuilder(
      column: $table.categoryDisplayName,
      builder: (column) => ColumnOrderings(column));
}

class $$InterviewQuestionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $InterviewQuestionsTable> {
  $$InterviewQuestionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => column);

  GeneratedColumn<String> get question =>
      $composableBuilder(column: $table.question, builder: (column) => column);

  GeneratedColumn<String> get answer =>
      $composableBuilder(column: $table.answer, builder: (column) => column);

  GeneratedColumn<String> get difficulty => $composableBuilder(
      column: $table.difficulty, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>, String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<int> get usageCount => $composableBuilder(
      column: $table.usageCount, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUsedAt => $composableBuilder(
      column: $table.lastUsedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<String> get categoryDisplayName => $composableBuilder(
      column: $table.categoryDisplayName, builder: (column) => column);

  Expression<T> quizResultsRefs<T extends Object>(
      Expression<T> Function($$QuizResultsTableAnnotationComposer a) f) {
    final $$QuizResultsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.quizResults,
        getReferencedColumn: (t) => t.questionId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$QuizResultsTableAnnotationComposer(
              $db: $db,
              $table: $db.quizResults,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$InterviewQuestionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $InterviewQuestionsTable,
    InterviewQuestion,
    $$InterviewQuestionsTableFilterComposer,
    $$InterviewQuestionsTableOrderingComposer,
    $$InterviewQuestionsTableAnnotationComposer,
    $$InterviewQuestionsTableCreateCompanionBuilder,
    $$InterviewQuestionsTableUpdateCompanionBuilder,
    (InterviewQuestion, $$InterviewQuestionsTableReferences),
    InterviewQuestion,
    PrefetchHooks Function({bool quizResultsRefs})> {
  $$InterviewQuestionsTableTableManager(
      _$AppDatabase db, $InterviewQuestionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InterviewQuestionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InterviewQuestionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InterviewQuestionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> categoryId = const Value.absent(),
            Value<String> question = const Value.absent(),
            Value<String> answer = const Value.absent(),
            Value<String> difficulty = const Value.absent(),
            Value<List<String>> tags = const Value.absent(),
            Value<int> usageCount = const Value.absent(),
            Value<DateTime> lastUsedAt = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<String?> categoryDisplayName = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              InterviewQuestionsCompanion(
            id: id,
            categoryId: categoryId,
            question: question,
            answer: answer,
            difficulty: difficulty,
            tags: tags,
            usageCount: usageCount,
            lastUsedAt: lastUsedAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
            categoryDisplayName: categoryDisplayName,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String categoryId,
            required String question,
            required String answer,
            required String difficulty,
            required List<String> tags,
            required int usageCount,
            required DateTime lastUsedAt,
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<String?> categoryDisplayName = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              InterviewQuestionsCompanion.insert(
            id: id,
            categoryId: categoryId,
            question: question,
            answer: answer,
            difficulty: difficulty,
            tags: tags,
            usageCount: usageCount,
            lastUsedAt: lastUsedAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
            categoryDisplayName: categoryDisplayName,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$InterviewQuestionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({quizResultsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (quizResultsRefs) db.quizResults],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (quizResultsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$InterviewQuestionsTableReferences
                            ._quizResultsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$InterviewQuestionsTableReferences(db, table, p0)
                                .quizResultsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.questionId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$InterviewQuestionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $InterviewQuestionsTable,
    InterviewQuestion,
    $$InterviewQuestionsTableFilterComposer,
    $$InterviewQuestionsTableOrderingComposer,
    $$InterviewQuestionsTableAnnotationComposer,
    $$InterviewQuestionsTableCreateCompanionBuilder,
    $$InterviewQuestionsTableUpdateCompanionBuilder,
    (InterviewQuestion, $$InterviewQuestionsTableReferences),
    InterviewQuestion,
    PrefetchHooks Function({bool quizResultsRefs})>;
typedef $$QuizResultsTableCreateCompanionBuilder = QuizResultsCompanion
    Function({
  Value<int> id,
  required String userAnswer,
  required String questionId,
});
typedef $$QuizResultsTableUpdateCompanionBuilder = QuizResultsCompanion
    Function({
  Value<int> id,
  Value<String> userAnswer,
  Value<String> questionId,
});

final class $$QuizResultsTableReferences
    extends BaseReferences<_$AppDatabase, $QuizResultsTable, QuizResult> {
  $$QuizResultsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $InterviewQuestionsTable _questionIdTable(_$AppDatabase db) =>
      db.interviewQuestions.createAlias($_aliasNameGenerator(
          db.quizResults.questionId, db.interviewQuestions.id));

  $$InterviewQuestionsTableProcessedTableManager? get questionId {
    if ($_item.questionId == null) return null;
    final manager =
        $$InterviewQuestionsTableTableManager($_db, $_db.interviewQuestions)
            .filter((f) => f.id($_item.questionId!));
    final item = $_typedResult.readTableOrNull(_questionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$QuizResultsTableFilterComposer
    extends Composer<_$AppDatabase, $QuizResultsTable> {
  $$QuizResultsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userAnswer => $composableBuilder(
      column: $table.userAnswer, builder: (column) => ColumnFilters(column));

  $$InterviewQuestionsTableFilterComposer get questionId {
    final $$InterviewQuestionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.questionId,
        referencedTable: $db.interviewQuestions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$InterviewQuestionsTableFilterComposer(
              $db: $db,
              $table: $db.interviewQuestions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$QuizResultsTableOrderingComposer
    extends Composer<_$AppDatabase, $QuizResultsTable> {
  $$QuizResultsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userAnswer => $composableBuilder(
      column: $table.userAnswer, builder: (column) => ColumnOrderings(column));

  $$InterviewQuestionsTableOrderingComposer get questionId {
    final $$InterviewQuestionsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.questionId,
        referencedTable: $db.interviewQuestions,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$InterviewQuestionsTableOrderingComposer(
              $db: $db,
              $table: $db.interviewQuestions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$QuizResultsTableAnnotationComposer
    extends Composer<_$AppDatabase, $QuizResultsTable> {
  $$QuizResultsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userAnswer => $composableBuilder(
      column: $table.userAnswer, builder: (column) => column);

  $$InterviewQuestionsTableAnnotationComposer get questionId {
    final $$InterviewQuestionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.questionId,
            referencedTable: $db.interviewQuestions,
            getReferencedColumn: (t) => t.id,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$InterviewQuestionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.interviewQuestions,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return composer;
  }
}

class $$QuizResultsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QuizResultsTable,
    QuizResult,
    $$QuizResultsTableFilterComposer,
    $$QuizResultsTableOrderingComposer,
    $$QuizResultsTableAnnotationComposer,
    $$QuizResultsTableCreateCompanionBuilder,
    $$QuizResultsTableUpdateCompanionBuilder,
    (QuizResult, $$QuizResultsTableReferences),
    QuizResult,
    PrefetchHooks Function({bool questionId})> {
  $$QuizResultsTableTableManager(_$AppDatabase db, $QuizResultsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$QuizResultsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$QuizResultsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$QuizResultsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userAnswer = const Value.absent(),
            Value<String> questionId = const Value.absent(),
          }) =>
              QuizResultsCompanion(
            id: id,
            userAnswer: userAnswer,
            questionId: questionId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userAnswer,
            required String questionId,
          }) =>
              QuizResultsCompanion.insert(
            id: id,
            userAnswer: userAnswer,
            questionId: questionId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$QuizResultsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({questionId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (questionId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.questionId,
                    referencedTable:
                        $$QuizResultsTableReferences._questionIdTable(db),
                    referencedColumn:
                        $$QuizResultsTableReferences._questionIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$QuizResultsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $QuizResultsTable,
    QuizResult,
    $$QuizResultsTableFilterComposer,
    $$QuizResultsTableOrderingComposer,
    $$QuizResultsTableAnnotationComposer,
    $$QuizResultsTableCreateCompanionBuilder,
    $$QuizResultsTableUpdateCompanionBuilder,
    (QuizResult, $$QuizResultsTableReferences),
    QuizResult,
    PrefetchHooks Function({bool questionId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$InterviewQuestionsTableTableManager get interviewQuestions =>
      $$InterviewQuestionsTableTableManager(_db, _db.interviewQuestions);
  $$QuizResultsTableTableManager get quizResults =>
      $$QuizResultsTableTableManager(_db, _db.quizResults);
}
