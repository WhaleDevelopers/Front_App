import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_provider.g.dart';

// 테마 타입 enum
enum ThemeType { indigo, green, purple, orange, red, teal, dark }

// 테마 이름들
const Map<ThemeType, String> themeNames = {
  ThemeType.indigo: '인디고',
  ThemeType.green: '그린',
  ThemeType.purple: '퍼플',
  ThemeType.orange: '오렌지',
  ThemeType.red: '레드',
  ThemeType.teal: '틸',
  ThemeType.dark: '다크 모드',
};

// 테마 데이터들
final Map<ThemeType, ThemeData> _themes = {
  ThemeType.indigo: _createTheme(Colors.indigo, Brightness.light),
  ThemeType.green: _createTheme(Colors.green, Brightness.light),
  ThemeType.purple: _createTheme(Colors.purple, Brightness.light),
  ThemeType.orange: _createTheme(Colors.orange, Brightness.light),
  ThemeType.red: _createTheme(Colors.red, Brightness.light),
  ThemeType.teal: _createTheme(Colors.teal, Brightness.light),
  ThemeType.dark: _createTheme(Colors.deepPurple, Brightness.dark),
};

/*------------------------------------------------------------------------------------------ */


@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  // build 메서드가 초기 상태를 설정합니다. (생성자 역할)
  @override
  ThemeType build() {
    // SharedPreferences에서 저장된 테마를 불러와 초기화
    _loadTheme();
    return ThemeType.indigo; // 기본값
  }

  void setTheme(ThemeType themeType) {
    state = themeType;
    _saveTheme(themeType);
  }

  void nextTheme() {
    final currentIndex = state.index;
    final nextIndex = (currentIndex + 1) % ThemeType.values.length;
    setTheme(ThemeType.values[nextIndex]);
  }

  Future<void> _saveTheme(ThemeType themeType) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('selected_theme', themeType.index);
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final idx = prefs.getInt('selected_theme');
    if (idx != null && idx >= 0 && idx < ThemeType.values.length) {
      state = ThemeType.values[idx];
    }
  }
}

@riverpod
ThemeData themeData(ThemeDataRef ref) {
  // themeNotifierProvider의 상태(ThemeType)가 바뀌면,
  // 이 프로바이더는 자동으로 재계산되어 새로운 ThemeData를 반환합니다.
  final themeType = ref.watch(themeNotifierProvider);
  return _themes[themeType]!;
}

/*------------------------------------------------------------------------------------------ */

// 공통 테마 생성 함수
ThemeData _createTheme(Color seedColor, Brightness brightness) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    ),
    useMaterial3: true,
    cardTheme: const CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 1,
    ),
  );
}