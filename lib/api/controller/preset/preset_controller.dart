import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'preset_controller.g.dart';

@RestApi()
abstract class PresetController {
  factory PresetController(Dio dio) = _PresetController;

  /// 문제 난이도 목록 조회
  @GET('/api/v1/preset/questions-difficulties')
  Future<List<String>> getQuestionDifficulties();

}
