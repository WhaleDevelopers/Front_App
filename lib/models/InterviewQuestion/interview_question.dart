import 'package:dev_stu/utils/date_time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interview_question.freezed.dart';
part 'interview_question.g.dart';

@freezed
class InterviewQuestion with _$InterviewQuestion {
  const factory InterviewQuestion({
    required String id,
    required String categoryId,
    required String question,
    required String answer,
    required String difficulty, // easy, medium, hard

    @Default([]) List<String> tags,

    // required int version,
    required int usageCount,       
    // required bool isActive,   

    @CustomDateTimeConverter() 
    required DateTime lastUsedAt,

    @CustomDateTimeConverter() 
    required DateTime createdAt,

    @CustomDateTimeConverter() 
    required DateTime updatedAt,  

    String? categoryDisplayName,
  }) = _InterviewQuestion;


  factory InterviewQuestion.fromJson(Map<String, dynamic> json) => _$InterviewQuestionFromJson(json);

}
