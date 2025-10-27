import 'package:dev_stu/models/InterviewQuestion/interview_question.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'interview_quiz_controller.g.dart';

@RestApi()
abstract class InterviewQuizController {
  factory InterviewQuizController(Dio dio) = _InterviewQuizController;

  /// 카테고리별 제한된 개수의 면접 질문 조회
  @GET('/api/v1/interview-questions/category-size')
  Future<List<InterviewQuestion>> getQuestionsByCategoryWithSize({
    @Query('categoryId') String? categoryId,
    @Query('size')       int size = 5,
  });
}