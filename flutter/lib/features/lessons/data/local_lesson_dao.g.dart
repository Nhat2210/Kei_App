// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_lesson_dao.dart';

// ignore_for_file: type=lint
mixin _$LocalLessonDaoMixin on DatabaseAccessor<AppDatabase> {
  $LocalLessonsTable get localLessons => attachedDatabase.localLessons;
  $LocalVocabulariesTable get localVocabularies =>
      attachedDatabase.localVocabularies;
  $LocalKanjisTable get localKanjis => attachedDatabase.localKanjis;
  $LocalGrammarsTable get localGrammars => attachedDatabase.localGrammars;
  LocalLessonDaoManager get managers => LocalLessonDaoManager(this);
}

class LocalLessonDaoManager {
  final _$LocalLessonDaoMixin _db;
  LocalLessonDaoManager(this._db);
  $$LocalLessonsTableTableManager get localLessons =>
      $$LocalLessonsTableTableManager(_db.attachedDatabase, _db.localLessons);
  $$LocalVocabulariesTableTableManager get localVocabularies =>
      $$LocalVocabulariesTableTableManager(
        _db.attachedDatabase,
        _db.localVocabularies,
      );
  $$LocalKanjisTableTableManager get localKanjis =>
      $$LocalKanjisTableTableManager(_db.attachedDatabase, _db.localKanjis);
  $$LocalGrammarsTableTableManager get localGrammars =>
      $$LocalGrammarsTableTableManager(_db.attachedDatabase, _db.localGrammars);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(localLessonDao)
final localLessonDaoProvider = LocalLessonDaoProvider._();

final class LocalLessonDaoProvider
    extends $FunctionalProvider<LocalLessonDao, LocalLessonDao, LocalLessonDao>
    with $Provider<LocalLessonDao> {
  LocalLessonDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localLessonDaoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localLessonDaoHash();

  @$internal
  @override
  $ProviderElement<LocalLessonDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LocalLessonDao create(Ref ref) {
    return localLessonDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalLessonDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalLessonDao>(value),
    );
  }
}

String _$localLessonDaoHash() => r'7accea1fc28201055cd0a24f167f84876211c719';
