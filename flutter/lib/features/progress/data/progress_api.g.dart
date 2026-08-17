// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(progressApi)
final progressApiProvider = ProgressApiProvider._();

final class ProgressApiProvider
    extends $FunctionalProvider<ProgressApi, ProgressApi, ProgressApi>
    with $Provider<ProgressApi> {
  ProgressApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'progressApiProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$progressApiHash();

  @$internal
  @override
  $ProviderElement<ProgressApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProgressApi create(Ref ref) {
    return progressApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProgressApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProgressApi>(value),
    );
  }
}

String _$progressApiHash() => r'6dc60abc7524e18965c450be7c639e422bf9cbe9';
