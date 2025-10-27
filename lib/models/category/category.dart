import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/date_time_converter.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    required String displayName,
    
    @Default(0)
    int sortOrder,
    
    @Default(true)
    bool isActive,
    
    @CustomDateTimeConverter() 
    required DateTime createdAt,
    
    @CustomDateTimeConverter() 
    required DateTime updatedAt,
    
    @Default(0)
    int count,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}