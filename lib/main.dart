import 'package:dev_stu/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/theme_provider.dart';
import 'router/router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = ref.watch(themeDataProvider);
    
    return MaterialApp.router(
      title: 'Dev_Stu',
      theme: themeData, // 동적 테마 적용
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
