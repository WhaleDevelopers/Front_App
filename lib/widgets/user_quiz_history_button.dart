import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget userQuizHistoryButton(BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () => context.goNamed('quiz_history'),
    icon: const Icon(Icons.history),
    label: const Text('내 퀴즈 기록 보기'),
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 14),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}
