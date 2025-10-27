import 'package:flutter/material.dart';

enum Difficulty { easy, medium, hard, unknown }

Difficulty parseDifficulty(String value) {
  switch (value.toLowerCase()) {
    case 'easy':   return Difficulty.easy;
    case 'medium': return Difficulty.medium;
    case 'hard':   return Difficulty.hard;
    default:       return Difficulty.unknown;
  }
}

Color getDifficultyColor(Difficulty difficulty) {
  switch (difficulty) {
    case Difficulty.easy:   return Colors.green;
    case Difficulty.medium: return Colors.orange;
    case Difficulty.hard:   return Colors.red;
    default:                return Colors.grey;
  }
}

String getDifficultyText(Difficulty difficulty) {
  switch (difficulty) {
    case Difficulty.easy:   return '쉬움';
    case Difficulty.medium: return '보통';
    case Difficulty.hard:   return '어려움';
    default:                return '알 수 없음';
  }
}

extension DifficultyStringExt on String {

  /// 문자열을 [Difficulty] enum으로 변환합니다.
  Difficulty toDifficulty() => parseDifficulty(this);

  /// 난이도에 맞는 색상을 반환합니다.
  Color get difficultyColor => getDifficultyColor(parseDifficulty(this));

  /// 난이도에 맞는 한글 텍스트를 반환합니다.
  String get difficultyText => getDifficultyText(parseDifficulty(this));

}
