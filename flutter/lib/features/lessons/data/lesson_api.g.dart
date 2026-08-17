// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(lessonApi)
final lessonApiProvider = LessonApiProvider._();

final class LessonApiProvider
    extends $FunctionalProvider<LessonApi, LessonApi, LessonApi>
    with $Provider<LessonApi> {
  LessonApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lessonApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lessonApiHash();

  @$internal
  @override
  $ProviderElement<LessonApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LessonApi create(Ref ref) {
    return lessonApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LessonApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LessonApi>(value),
    );
  }
}

String _$lessonApiHash() => r'b8437881afc9166d69c9d9e9bba291887eae82e5';
