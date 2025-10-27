import 'package:dev_stu/api/controller/categories/category_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../api_error_handler.dart';
import '../../models/category/category.dart';

class CategoryRepository {
  final CategoryController categoryController;
  
  CategoryRepository(this.categoryController);
  
  /// 활성화된 카테고리 목록 조회
  Future<List<Category>> loadCategories() async {
    try {
      return await categoryController.getActiveCategories();
    } on DioException catch (e) {
      throw ApiErrorHandler.getErrorMessage(e);
    } catch (e) {
      debugPrint('카테고리 로드 실패: $e');
      throw '카테고리를 불러오는 중 오류가 발생했습니다';
    }
  }
  
}