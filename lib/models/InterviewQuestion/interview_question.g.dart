// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterviewQuestionImpl _$$InterviewQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$InterviewQuestionImpl(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      question: json['question'] as String,
      answer: json['answer'] as String,
      difficulty: json['difficulty'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      usageCount: (json['usageCount'] as num).toInt(),
      lastUsedAt: const CustomDateTimeConverter().fromJson(json['lastUsedAt']),
      createdAt: const CustomDateTimeConverter().fromJson(json['createdAt']),
      updatedAt: const CustomDateTimeConverter().fromJson(json['updatedAt']),
      categoryDisplayName: json['categoryDisplayName'] as String?,
    );

Map<String, dynamic> _$$InterviewQuestionImplToJson(
        _$InterviewQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'question': instance.question,
      'answer': instance.answer,
      'difficulty': instance.difficulty,
      'tags': instance.tags,
      'usageCount': instance.usageCount,
      'lastUsedAt': const CustomDateTimeConverter().toJson(instance.lastUsedAt),
      'createdAt': const CustomDateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const CustomDateTimeConverter().toJson(instance.updatedAt),
      'categoryDisplayName': instance.categoryDisplayName,
    };
