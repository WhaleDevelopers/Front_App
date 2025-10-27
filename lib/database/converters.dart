import 'dart:convert';
import 'package:drift/drift.dart';

// List<String> <-> String(JSON) 변환을 위한 TypeConverter
class TagsConverter extends TypeConverter<List<String>, String> {
  const TagsConverter();

  @override
  List<String> fromSql(String fromDb) {
    return (json.decode(fromDb) as List<dynamic>).cast<String>();
  }

  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}
