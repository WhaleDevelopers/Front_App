import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../models/category/category.dart';

part 'category_controller.g.dart';

@RestApi()
abstract class CategoryController {
  factory CategoryController(Dio dio) = _CategoryController;

  /// 활성 카테고리만 조회
  @GET('/api/v1/categories/active')
  Future<List<Category>> getActiveCategories();
}
