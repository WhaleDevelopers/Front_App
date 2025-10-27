
import 'package:dev_stu/api/controller/interview_quizs/interview_quiz_controller.dart';
import 'package:dev_stu/models/InterviewQuestion/interview_question.dart';
import '../api_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class InterviewQuizRepository {
  final InterviewQuizController _controller;

  InterviewQuizRepository(this._controller);

  /// 카테고리별 제한된 개수의 면접 질문 조회
  Future<List<InterviewQuestion>> fetchInterviewQuizsByCategoryWithSize(String categoryId, int size) async {
    try {
      return await _controller.getQuestionsByCategoryWithSize(
        categoryId: categoryId,
        size: size,
      );
    } on DioException catch (e) {
      throw ApiErrorHandler.getErrorMessage(e);
    } catch (e) {
      debugPrint('면접 질문 조회 실패: $e');
      throw '면접 질문을 불러오는 중 오류가 발생했습니다';
    }
  }
}