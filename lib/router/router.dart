import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:dev_stu/screens/home_screen.dart';
import 'package:dev_stu/screens/quiz_screen.dart';
import 'package:dev_stu/screens/result_screen.dart';
import 'package:dev_stu/screens/user_quiz_history_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'quiz',
      path: '/quiz/:id',
      builder: (context, state) {
        final categoryId = state.pathParameters['id']!;
        return QuizScreen(categoryId: categoryId);
      },
    ),
    GoRoute(
      name: 'quiz_result',
      path: '/quiz-result',
      builder: (context, state) => const ResultScreen(),
    ),
    GoRoute(
      name: 'quiz_history',
      path: '/quiz-history',
      builder: (context, state) => const UserQuizHistoryScreen(),
    ),
  ],
);
