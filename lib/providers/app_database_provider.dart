import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dev_stu/database/database.dart';

part 'app_database_provider.g.dart';

@Riverpod(keepAlive: true)
Future<AppDatabase> appDatabase(AppDatabaseRef ref) async {
  final db = AppDatabase();

  ref.onDispose(() async {
    try {
      await db.close();
    } catch (_) {}
  });

  return db;
}