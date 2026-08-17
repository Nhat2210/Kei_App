// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentLevel)
final currentLevelProvider = CurrentLevelProvider._();

final class CurrentLevelProvider
    extends $NotifierProvider<CurrentLevel, String> {
  CurrentLevelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLevelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLevelHash();

  @$internal
  @override
  CurrentLevel create() => CurrentLevel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$currentLevelHash() => r'af56aed4b555b556e3b594c431ebd82e99c8a495';

abstract class _$CurrentLevel extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(levels)
final levelsProvider = LevelsProvider._();

final class LevelsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LevelDto>>,
          List<LevelDto>,
          FutureOr<List<LevelDto>>
        >
    with $FutureModifier<List<LevelDto>>, $FutureProvider<List<LevelDto>> {
  LevelsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'levelsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levelsHash();

  @$internal
  @override
  $FutureProviderElement<List<LevelDto>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LevelDto>> create(Ref ref) {
    return levels(ref);
  }
}

String _$levelsHash() => r'48f418f44ee7517b46a2da753ba27766671d25c2';

@ProviderFor(currentLevelModules)
final currentLevelModulesProvider = CurrentLevelModulesProvider._();

final class CurrentLevelModulesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ModuleDto>>,
          List<ModuleDto>,
          FutureOr<List<ModuleDto>>
        >
    with $FutureModifier<List<ModuleDto>>, $FutureProvider<List<ModuleDto>> {
  CurrentLevelModulesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentLevelModulesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentLevelModulesHash();

  @$internal
  @override
  $FutureProviderElement<List<ModuleDto>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ModuleDto>> create(Ref ref) {
    return currentLevelModules(ref);
  }
}

String _$currentLevelModulesHash() =>
    r'54f7d08b4b83bc22b18a22be5b9c3ee7de5c98c9';

@ProviderFor(moduleLessons)
final moduleLessonsProvider = ModuleLessonsFamily._();

final class ModuleLessonsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LessonDto>>,
          List<LessonDto>,
          FutureOr<List<LessonDto>>
        >
    with $FutureModifier<List<LessonDto>>, $FutureProvider<List<LessonDto>> {
  ModuleLessonsProvider._({
    required ModuleLessonsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'moduleLessonsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$moduleLessonsHash();

  @override
  String toString() {
    return r'moduleLessonsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<LessonDto>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LessonDto>> create(Ref ref) {
    final argument = this.argument as String;
    return moduleLessons(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ModuleLessonsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$moduleLessonsHash() => r'ce23186f39a487b470ac06d771a3202a9541ec39';

final class ModuleLessonsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<LessonDto>>, String> {
  ModuleLessonsFamily._()
    : super(
        retry: null,
        name: r'moduleLessonsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ModuleLessonsProvider call(String moduleId) =>
      ModuleLessonsProvider._(argument: moduleId, from: this);

  @override
  String toString() => r'moduleLessonsProvider';
}

@ProviderFor(lessonDetail)
final lessonDetailProvider = LessonDetailFamily._();

final class LessonDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<LessonDetailDto>,
          LessonDetailDto,
          FutureOr<LessonDetailDto>
        >
    with $FutureModifier<LessonDetailDto>, $FutureProvider<LessonDetailDto> {
  LessonDetailProvider._({
    required LessonDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'lessonDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$lessonDetailHash();

  @override
  String toString() {
    return r'lessonDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<LessonDetailDto> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LessonDetailDto> create(Ref ref) {
    final argument = this.argument as String;
    return lessonDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LessonDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$lessonDetailHash() => r'7542b0057a5fadec16a098281a6fb413a6810b8c';

final class LessonDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<LessonDetailDto>, String> {
  LessonDetailFamily._()
    : super(
        retry: null,
        name: r'lessonDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LessonDetailProvider call(String lessonId) =>
      LessonDetailProvider._(argument: lessonId, from: this);

  @override
  String toString() => r'lessonDetailProvider';
}

@ProviderFor(lessonExercises)
final lessonExercisesProvider = LessonExercisesFamily._();

final class LessonExercisesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ExerciseDto>>,
          List<ExerciseDto>,
          FutureOr<List<ExerciseDto>>
        >
    with
        $FutureModifier<List<ExerciseDto>>,
        $FutureProvider<List<ExerciseDto>> {
  LessonExercisesProvider._({
    required LessonExercisesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'lessonExercisesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$lessonExercisesHash();

  @override
  String toString() {
    return r'lessonExercisesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ExerciseDto>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ExerciseDto>> create(Ref ref) {
    final argument = this.argument as String;
    return lessonExercises(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LessonExercisesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$lessonExercisesHash() => r'9781e38a77852477ad51bcba1ec99357443885ce';

final class LessonExercisesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<ExerciseDto>>, String> {
  LessonExercisesFamily._()
    : super(
        retry: null,
        name: r'lessonExercisesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LessonExercisesProvider call(String lessonId) =>
      LessonExercisesProvider._(argument: lessonId, from: this);

  @override
  String toString() => r'lessonExercisesProvider';
}
