// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResultImpl _$$QuizResultImplFromJson(Map<String, dynamic> json) =>
    _$QuizResultImpl(
      question:
          InterviewQuestion.fromJson(json['question'] as Map<String, dynamic>),
      userAnswer: json['userAnswer'] as String,
    );

Map<String, dynamic> _$$QuizResultImplToJson(_$QuizResultImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'userAnswer': instance.userAnswer,
    };
