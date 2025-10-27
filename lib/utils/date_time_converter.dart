import 'package:freezed_annotation/freezed_annotation.dart';

/// API 응답에서 오는 다양한 날짜 형식을 DateTime으로 변환합니다.
/// 1. `List<dynamic>`: [2025, 10, 10, 15, 33, 35, 149000000]
/// 2. `String`: "2025-10-10T15:33:35.149Z"
class CustomDateTimeConverter implements JsonConverter<DateTime, dynamic> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is String) {
      return DateTime.tryParse(json) ?? DateTime.now();
    }
    if (json is List && json.length >= 6) {
      try {
        return DateTime(
          json[0], // year
          json[1], // month
          json[2], // day
          json[3], // hour
          json[4], // minute
          json[5], // second
        );
      } catch (e) {
        // 파싱 실패 시 현재 시간 반환
        return DateTime.now();
      }
    }
    // 지원하지 않는 형식이면 현재 시간 반환
    return DateTime.now();
  }

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
