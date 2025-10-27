// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterviewQuestion _$InterviewQuestionFromJson(Map<String, dynamic> json) {
  return _InterviewQuestion.fromJson(json);
}

/// @nodoc
mixin _$InterviewQuestion {
  String get id => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get difficulty =>
      throw _privateConstructorUsedError; // easy, medium, hard
  List<String> get tags =>
      throw _privateConstructorUsedError; // required int version,
  int get usageCount =>
      throw _privateConstructorUsedError; // required bool isActive,
  @CustomDateTimeConverter()
  DateTime get lastUsedAt => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get categoryDisplayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterviewQuestionCopyWith<InterviewQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewQuestionCopyWith<$Res> {
  factory $InterviewQuestionCopyWith(
          InterviewQuestion value, $Res Function(InterviewQuestion) then) =
      _$InterviewQuestionCopyWithImpl<$Res, InterviewQuestion>;
  @useResult
  $Res call(
      {String id,
      String categoryId,
      String question,
      String answer,
      String difficulty,
      List<String> tags,
      int usageCount,
      @CustomDateTimeConverter() DateTime lastUsedAt,
      @CustomDateTimeConverter() DateTime createdAt,
      @CustomDateTimeConverter() DateTime updatedAt,
      String? categoryDisplayName});
}

/// @nodoc
class _$InterviewQuestionCopyWithImpl<$Res, $Val extends InterviewQuestion>
    implements $InterviewQuestionCopyWith<$Res> {
  _$InterviewQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? question = null,
    Object? answer = null,
    Object? difficulty = null,
    Object? tags = null,
    Object? usageCount = null,
    Object? lastUsedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categoryDisplayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usageCount: null == usageCount
          ? _value.usageCount
          : usageCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUsedAt: null == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryDisplayName: freezed == categoryDisplayName
          ? _value.categoryDisplayName
          : categoryDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewQuestionImplCopyWith<$Res>
    implements $InterviewQuestionCopyWith<$Res> {
  factory _$$InterviewQuestionImplCopyWith(_$InterviewQuestionImpl value,
          $Res Function(_$InterviewQuestionImpl) then) =
      __$$InterviewQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryId,
      String question,
      String answer,
      String difficulty,
      List<String> tags,
      int usageCount,
      @CustomDateTimeConverter() DateTime lastUsedAt,
      @CustomDateTimeConverter() DateTime createdAt,
      @CustomDateTimeConverter() DateTime updatedAt,
      String? categoryDisplayName});
}

/// @nodoc
class __$$InterviewQuestionImplCopyWithImpl<$Res>
    extends _$InterviewQuestionCopyWithImpl<$Res, _$InterviewQuestionImpl>
    implements _$$InterviewQuestionImplCopyWith<$Res> {
  __$$InterviewQuestionImplCopyWithImpl(_$InterviewQuestionImpl _value,
      $Res Function(_$InterviewQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? question = null,
    Object? answer = null,
    Object? difficulty = null,
    Object? tags = null,
    Object? usageCount = null,
    Object? lastUsedAt = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categoryDisplayName = freezed,
  }) {
    return _then(_$InterviewQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usageCount: null == usageCount
          ? _value.usageCount
          : usageCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastUsedAt: null == lastUsedAt
          ? _value.lastUsedAt
          : lastUsedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryDisplayName: freezed == categoryDisplayName
          ? _value.categoryDisplayName
          : categoryDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterviewQuestionImpl implements _InterviewQuestion {
  const _$InterviewQuestionImpl(
      {required this.id,
      required this.categoryId,
      required this.question,
      required this.answer,
      required this.difficulty,
      final List<String> tags = const [],
      required this.usageCount,
      @CustomDateTimeConverter() required this.lastUsedAt,
      @CustomDateTimeConverter() required this.createdAt,
      @CustomDateTimeConverter() required this.updatedAt,
      this.categoryDisplayName})
      : _tags = tags;

  factory _$InterviewQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterviewQuestionImplFromJson(json);

  @override
  final String id;
  @override
  final String categoryId;
  @override
  final String question;
  @override
  final String answer;
  @override
  final String difficulty;
// easy, medium, hard
  final List<String> _tags;
// easy, medium, hard
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

// required int version,
  @override
  final int usageCount;
// required bool isActive,
  @override
  @CustomDateTimeConverter()
  final DateTime lastUsedAt;
  @override
  @CustomDateTimeConverter()
  final DateTime createdAt;
  @override
  @CustomDateTimeConverter()
  final DateTime updatedAt;
  @override
  final String? categoryDisplayName;

  @override
  String toString() {
    return 'InterviewQuestion(id: $id, categoryId: $categoryId, question: $question, answer: $answer, difficulty: $difficulty, tags: $tags, usageCount: $usageCount, lastUsedAt: $lastUsedAt, createdAt: $createdAt, updatedAt: $updatedAt, categoryDisplayName: $categoryDisplayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.usageCount, usageCount) ||
                other.usageCount == usageCount) &&
            (identical(other.lastUsedAt, lastUsedAt) ||
                other.lastUsedAt == lastUsedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.categoryDisplayName, categoryDisplayName) ||
                other.categoryDisplayName == categoryDisplayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      question,
      answer,
      difficulty,
      const DeepCollectionEquality().hash(_tags),
      usageCount,
      lastUsedAt,
      createdAt,
      updatedAt,
      categoryDisplayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewQuestionImplCopyWith<_$InterviewQuestionImpl> get copyWith =>
      __$$InterviewQuestionImplCopyWithImpl<_$InterviewQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewQuestionImplToJson(
      this,
    );
  }
}

abstract class _InterviewQuestion implements InterviewQuestion {
  const factory _InterviewQuestion(
      {required final String id,
      required final String categoryId,
      required final String question,
      required final String answer,
      required final String difficulty,
      final List<String> tags,
      required final int usageCount,
      @CustomDateTimeConverter() required final DateTime lastUsedAt,
      @CustomDateTimeConverter() required final DateTime createdAt,
      @CustomDateTimeConverter() required final DateTime updatedAt,
      final String? categoryDisplayName}) = _$InterviewQuestionImpl;

  factory _InterviewQuestion.fromJson(Map<String, dynamic> json) =
      _$InterviewQuestionImpl.fromJson;

  @override
  String get id;
  @override
  String get categoryId;
  @override
  String get question;
  @override
  String get answer;
  @override
  String get difficulty;
  @override // easy, medium, hard
  List<String> get tags;
  @override // required int version,
  int get usageCount;
  @override // required bool isActive,
  @CustomDateTimeConverter()
  DateTime get lastUsedAt;
  @override
  @CustomDateTimeConverter()
  DateTime get createdAt;
  @override
  @CustomDateTimeConverter()
  DateTime get updatedAt;
  @override
  String? get categoryDisplayName;
  @override
  @JsonKey(ignore: true)
  _$$InterviewQuestionImplCopyWith<_$InterviewQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
