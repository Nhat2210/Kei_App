import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'connection.dart'
    if (dart.library.ffi) 'connection_native.dart'
    if (dart.library.html) 'connection_web.dart'
    if (dart.library.js_interop) 'connection_web.dart';

part 'app_database.g.dart';

class LocalLessons extends Table {
  TextColumn get id => text()();
  TextColumn get moduleId => text()();
  TextColumn get name => text()();
  IntColumn get xpReward => integer()();
  IntColumn get sortOrder => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class LocalVocabularies extends Table {
  TextColumn get id => text()();
  TextColumn get lessonId => text().references(LocalLessons, #id)();
  TextColumn get word => text()();
  TextColumn get meaning => text()();
  TextColumn get reading => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class LocalKanjis extends Table {
  TextColumn get id => text()();
  TextColumn get lessonId => text().references(LocalLessons, #id)();
  TextColumn get character => text()();
  TextColumn get meaning => text()();
  TextColumn get onyomi => text().nullable()();
  TextColumn get kunyomi => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class LocalGrammars extends Table {
  TextColumn get id => text()();
  TextColumn get lessonId => text().references(LocalLessons, #id)();
  TextColumn get pattern => text()();
  TextColumn get meaning => text()();
  TextColumn get usage => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(
  tables: [LocalLessons, LocalVocabularies, LocalKanjis, LocalGrammars],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(openConnection());

  @override
  int get schemaVersion => 1;
}

@riverpod
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
}
