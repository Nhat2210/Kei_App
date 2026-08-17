// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExerciseResultDto {

@JsonKey(name: 'exercise_id') String get exerciseId;@JsonKey(name: 'user_answer') String get userAnswer;@JsonKey(name: 'is_correct') bool get isCorrect;
/// Create a copy of ExerciseResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseResultDtoCopyWith<ExerciseResultDto> get copyWith => _$ExerciseResultDtoCopyWithImpl<ExerciseResultDto>(this as ExerciseResultDto, _$identity);

  /// Serializes this ExerciseResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseResultDto&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.userAnswer, userAnswer) || other.userAnswer == userAnswer)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exerciseId,userAnswer,isCorrect);

@override
String toString() {
  return 'ExerciseResultDto(exerciseId: $exerciseId, userAnswer: $userAnswer, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class $ExerciseResultDtoCopyWith<$Res>  {
  factory $ExerciseResultDtoCopyWith(ExerciseResultDto value, $Res Function(ExerciseResultDto) _then) = _$ExerciseResultDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'exercise_id') String exerciseId,@JsonKey(name: 'user_answer') String userAnswer,@JsonKey(name: 'is_correct') bool isCorrect
});




}
/// @nodoc
class _$ExerciseResultDtoCopyWithImpl<$Res>
    implements $ExerciseResultDtoCopyWith<$Res> {
  _$ExerciseResultDtoCopyWithImpl(this._self, this._then);

  final ExerciseResultDto _self;
  final $Res Function(ExerciseResultDto) _then;

/// Create a copy of ExerciseResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exerciseId = null,Object? userAnswer = null,Object? isCorrect = null,}) {
  return _then(ExerciseResultDto(
exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,userAnswer: null == userAnswer ? _self.userAnswer : userAnswer // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseResultDto].
extension ExerciseResultDtoPatterns on ExerciseResultDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseResultDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseResultDto value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseResultDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseResultDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'exercise_id')  String exerciseId, @JsonKey(name: 'user_answer')  String userAnswer, @JsonKey(name: 'is_correct')  bool isCorrect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseResultDto() when $default != null:
return $default(_that.exerciseId,_that.userAnswer,_that.isCorrect);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'exercise_id')  String exerciseId, @JsonKey(name: 'user_answer')  String userAnswer, @JsonKey(name: 'is_correct')  bool isCorrect)  $default,) {final _that = this;
switch (_that) {
case _ExerciseResultDto():
return $default(_that.exerciseId,_that.userAnswer,_that.isCorrect);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'exercise_id')  String exerciseId, @JsonKey(name: 'user_answer')  String userAnswer, @JsonKey(name: 'is_correct')  bool isCorrect)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseResultDto() when $default != null:
return $default(_that.exerciseId,_that.userAnswer,_that.isCorrect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExerciseResultDto implements ExerciseResultDto {
  const _ExerciseResultDto({@JsonKey(name: 'exercise_id') required this.exerciseId, @JsonKey(name: 'user_answer') required this.userAnswer, @JsonKey(name: 'is_correct') required this.isCorrect});
  factory _ExerciseResultDto.fromJson(Map<String, dynamic> json) => _$ExerciseResultDtoFromJson(json);

@override@JsonKey(name: 'exercise_id') final  String exerciseId;
@override@JsonKey(name: 'user_answer') final  String userAnswer;
@override@JsonKey(name: 'is_correct') final  bool isCorrect;

/// Create a copy of ExerciseResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseResultDtoCopyWith<_ExerciseResultDto> get copyWith => __$ExerciseResultDtoCopyWithImpl<_ExerciseResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExerciseResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseResultDto&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.userAnswer, userAnswer) || other.userAnswer == userAnswer)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exerciseId,userAnswer,isCorrect);

@override
String toString() {
  return 'ExerciseResultDto(exerciseId: $exerciseId, userAnswer: $userAnswer, isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class _$ExerciseResultDtoCopyWith<$Res> implements $ExerciseResultDtoCopyWith<$Res> {
  factory _$ExerciseResultDtoCopyWith(_ExerciseResultDto value, $Res Function(_ExerciseResultDto) _then) = __$ExerciseResultDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'exercise_id') String exerciseId,@JsonKey(name: 'user_answer') String userAnswer,@JsonKey(name: 'is_correct') bool isCorrect
});




}
/// @nodoc
class __$ExerciseResultDtoCopyWithImpl<$Res>
    implements _$ExerciseResultDtoCopyWith<$Res> {
  __$ExerciseResultDtoCopyWithImpl(this._self, this._then);

  final _ExerciseResultDto _self;
  final $Res Function(_ExerciseResultDto) _then;

/// Create a copy of ExerciseResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exerciseId = null,Object? userAnswer = null,Object? isCorrect = null,}) {
  return _then(_ExerciseResultDto(
exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,userAnswer: null == userAnswer ? _self.userAnswer : userAnswer // ignore: cast_nullable_to_non_nullable
as String,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CompleteLessonRequest {

 int get score;@JsonKey(name: 'exercise_results') List<ExerciseResultDto> get exerciseResults;
/// Create a copy of CompleteLessonRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteLessonRequestCopyWith<CompleteLessonRequest> get copyWith => _$CompleteLessonRequestCopyWithImpl<CompleteLessonRequest>(this as CompleteLessonRequest, _$identity);

  /// Serializes this CompleteLessonRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteLessonRequest&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.exerciseResults, exerciseResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,const DeepCollectionEquality().hash(exerciseResults));

@override
String toString() {
  return 'CompleteLessonRequest(score: $score, exerciseResults: $exerciseResults)';
}


}

/// @nodoc
abstract mixin class $CompleteLessonRequestCopyWith<$Res>  {
  factory $CompleteLessonRequestCopyWith(CompleteLessonRequest value, $Res Function(CompleteLessonRequest) _then) = _$CompleteLessonRequestCopyWithImpl;
@useResult
$Res call({
 int score,@JsonKey(name: 'exercise_results') List<ExerciseResultDto> exerciseResults
});




}
/// @nodoc
class _$CompleteLessonRequestCopyWithImpl<$Res>
    implements $CompleteLessonRequestCopyWith<$Res> {
  _$CompleteLessonRequestCopyWithImpl(this._self, this._then);

  final CompleteLessonRequest _self;
  final $Res Function(CompleteLessonRequest) _then;

/// Create a copy of CompleteLessonRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? exerciseResults = null,}) {
  return _then(CompleteLessonRequest(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,exerciseResults: null == exerciseResults ? _self.exerciseResults : exerciseResults // ignore: cast_nullable_to_non_nullable
as List<ExerciseResultDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteLessonRequest].
extension CompleteLessonRequestPatterns on CompleteLessonRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteLessonRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteLessonRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteLessonRequest value)  $default,){
final _that = this;
switch (_that) {
case _CompleteLessonRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteLessonRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteLessonRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score, @JsonKey(name: 'exercise_results')  List<ExerciseResultDto> exerciseResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteLessonRequest() when $default != null:
return $default(_that.score,_that.exerciseResults);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score, @JsonKey(name: 'exercise_results')  List<ExerciseResultDto> exerciseResults)  $default,) {final _that = this;
switch (_that) {
case _CompleteLessonRequest():
return $default(_that.score,_that.exerciseResults);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score, @JsonKey(name: 'exercise_results')  List<ExerciseResultDto> exerciseResults)?  $default,) {final _that = this;
switch (_that) {
case _CompleteLessonRequest() when $default != null:
return $default(_that.score,_that.exerciseResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteLessonRequest implements CompleteLessonRequest {
  const _CompleteLessonRequest({required this.score, @JsonKey(name: 'exercise_results') required  List<ExerciseResultDto> exerciseResults}): _exerciseResults = exerciseResults;
  factory _CompleteLessonRequest.fromJson(Map<String, dynamic> json) => _$CompleteLessonRequestFromJson(json);

@override final  int score;
 final  List<ExerciseResultDto> _exerciseResults;
@override@JsonKey(name: 'exercise_results') List<ExerciseResultDto> get exerciseResults {
  if (_exerciseResults is EqualUnmodifiableListView) return _exerciseResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exerciseResults);
}


/// Create a copy of CompleteLessonRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteLessonRequestCopyWith<_CompleteLessonRequest> get copyWith => __$CompleteLessonRequestCopyWithImpl<_CompleteLessonRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteLessonRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteLessonRequest&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._exerciseResults, _exerciseResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,const DeepCollectionEquality().hash(_exerciseResults));

@override
String toString() {
  return 'CompleteLessonRequest(score: $score, exerciseResults: $exerciseResults)';
}


}

/// @nodoc
abstract mixin class _$CompleteLessonRequestCopyWith<$Res> implements $CompleteLessonRequestCopyWith<$Res> {
  factory _$CompleteLessonRequestCopyWith(_CompleteLessonRequest value, $Res Function(_CompleteLessonRequest) _then) = __$CompleteLessonRequestCopyWithImpl;
@override @useResult
$Res call({
 int score,@JsonKey(name: 'exercise_results') List<ExerciseResultDto> exerciseResults
});




}
/// @nodoc
class __$CompleteLessonRequestCopyWithImpl<$Res>
    implements _$CompleteLessonRequestCopyWith<$Res> {
  __$CompleteLessonRequestCopyWithImpl(this._self, this._then);

  final _CompleteLessonRequest _self;
  final $Res Function(_CompleteLessonRequest) _then;

/// Create a copy of CompleteLessonRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? exerciseResults = null,}) {
  return _then(_CompleteLessonRequest(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,exerciseResults: null == exerciseResults ? _self._exerciseResults : exerciseResults // ignore: cast_nullable_to_non_nullable
as List<ExerciseResultDto>,
  ));
}


}


/// @nodoc
mixin _$CompleteLessonResponseData {

@JsonKey(name: 'xp_received') int get xpReceived;@JsonKey(name: 'total_xp') int get totalXp;@JsonKey(name: 'streak_days') int get streakDays;@JsonKey(name: 'is_next_module_unlocked') bool get isNextModuleUnlocked;
/// Create a copy of CompleteLessonResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteLessonResponseDataCopyWith<CompleteLessonResponseData> get copyWith => _$CompleteLessonResponseDataCopyWithImpl<CompleteLessonResponseData>(this as CompleteLessonResponseData, _$identity);

  /// Serializes this CompleteLessonResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteLessonResponseData&&(identical(other.xpReceived, xpReceived) || other.xpReceived == xpReceived)&&(identical(other.totalXp, totalXp) || other.totalXp == totalXp)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.isNextModuleUnlocked, isNextModuleUnlocked) || other.isNextModuleUnlocked == isNextModuleUnlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xpReceived,totalXp,streakDays,isNextModuleUnlocked);

@override
String toString() {
  return 'CompleteLessonResponseData(xpReceived: $xpReceived, totalXp: $totalXp, streakDays: $streakDays, isNextModuleUnlocked: $isNextModuleUnlocked)';
}


}

/// @nodoc
abstract mixin class $CompleteLessonResponseDataCopyWith<$Res>  {
  factory $CompleteLessonResponseDataCopyWith(CompleteLessonResponseData value, $Res Function(CompleteLessonResponseData) _then) = _$CompleteLessonResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'xp_received') int xpReceived,@JsonKey(name: 'total_xp') int totalXp,@JsonKey(name: 'streak_days') int streakDays,@JsonKey(name: 'is_next_module_unlocked') bool isNextModuleUnlocked
});




}
/// @nodoc
class _$CompleteLessonResponseDataCopyWithImpl<$Res>
    implements $CompleteLessonResponseDataCopyWith<$Res> {
  _$CompleteLessonResponseDataCopyWithImpl(this._self, this._then);

  final CompleteLessonResponseData _self;
  final $Res Function(CompleteLessonResponseData) _then;

/// Create a copy of CompleteLessonResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xpReceived = null,Object? totalXp = null,Object? streakDays = null,Object? isNextModuleUnlocked = null,}) {
  return _then(CompleteLessonResponseData(
xpReceived: null == xpReceived ? _self.xpReceived : xpReceived // ignore: cast_nullable_to_non_nullable
as int,totalXp: null == totalXp ? _self.totalXp : totalXp // ignore: cast_nullable_to_non_nullable
as int,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,isNextModuleUnlocked: null == isNextModuleUnlocked ? _self.isNextModuleUnlocked : isNextModuleUnlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteLessonResponseData].
extension CompleteLessonResponseDataPatterns on CompleteLessonResponseData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteLessonResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteLessonResponseData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteLessonResponseData value)  $default,){
final _that = this;
switch (_that) {
case _CompleteLessonResponseData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteLessonResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteLessonResponseData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'xp_received')  int xpReceived, @JsonKey(name: 'total_xp')  int totalXp, @JsonKey(name: 'streak_days')  int streakDays, @JsonKey(name: 'is_next_module_unlocked')  bool isNextModuleUnlocked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteLessonResponseData() when $default != null:
return $default(_that.xpReceived,_that.totalXp,_that.streakDays,_that.isNextModuleUnlocked);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'xp_received')  int xpReceived, @JsonKey(name: 'total_xp')  int totalXp, @JsonKey(name: 'streak_days')  int streakDays, @JsonKey(name: 'is_next_module_unlocked')  bool isNextModuleUnlocked)  $default,) {final _that = this;
switch (_that) {
case _CompleteLessonResponseData():
return $default(_that.xpReceived,_that.totalXp,_that.streakDays,_that.isNextModuleUnlocked);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'xp_received')  int xpReceived, @JsonKey(name: 'total_xp')  int totalXp, @JsonKey(name: 'streak_days')  int streakDays, @JsonKey(name: 'is_next_module_unlocked')  bool isNextModuleUnlocked)?  $default,) {final _that = this;
switch (_that) {
case _CompleteLessonResponseData() when $default != null:
return $default(_that.xpReceived,_that.totalXp,_that.streakDays,_that.isNextModuleUnlocked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteLessonResponseData implements CompleteLessonResponseData {
  const _CompleteLessonResponseData({@JsonKey(name: 'xp_received') required this.xpReceived, @JsonKey(name: 'total_xp') required this.totalXp, @JsonKey(name: 'streak_days') required this.streakDays, @JsonKey(name: 'is_next_module_unlocked') required this.isNextModuleUnlocked});
  factory _CompleteLessonResponseData.fromJson(Map<String, dynamic> json) => _$CompleteLessonResponseDataFromJson(json);

@override@JsonKey(name: 'xp_received') final  int xpReceived;
@override@JsonKey(name: 'total_xp') final  int totalXp;
@override@JsonKey(name: 'streak_days') final  int streakDays;
@override@JsonKey(name: 'is_next_module_unlocked') final  bool isNextModuleUnlocked;

/// Create a copy of CompleteLessonResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteLessonResponseDataCopyWith<_CompleteLessonResponseData> get copyWith => __$CompleteLessonResponseDataCopyWithImpl<_CompleteLessonResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteLessonResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteLessonResponseData&&(identical(other.xpReceived, xpReceived) || other.xpReceived == xpReceived)&&(identical(other.totalXp, totalXp) || other.totalXp == totalXp)&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.isNextModuleUnlocked, isNextModuleUnlocked) || other.isNextModuleUnlocked == isNextModuleUnlocked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xpReceived,totalXp,streakDays,isNextModuleUnlocked);

@override
String toString() {
  return 'CompleteLessonResponseData(xpReceived: $xpReceived, totalXp: $totalXp, streakDays: $streakDays, isNextModuleUnlocked: $isNextModuleUnlocked)';
}


}

/// @nodoc
abstract mixin class _$CompleteLessonResponseDataCopyWith<$Res> implements $CompleteLessonResponseDataCopyWith<$Res> {
  factory _$CompleteLessonResponseDataCopyWith(_CompleteLessonResponseData value, $Res Function(_CompleteLessonResponseData) _then) = __$CompleteLessonResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'xp_received') int xpReceived,@JsonKey(name: 'total_xp') int totalXp,@JsonKey(name: 'streak_days') int streakDays,@JsonKey(name: 'is_next_module_unlocked') bool isNextModuleUnlocked
});




}
/// @nodoc
class __$CompleteLessonResponseDataCopyWithImpl<$Res>
    implements _$CompleteLessonResponseDataCopyWith<$Res> {
  __$CompleteLessonResponseDataCopyWithImpl(this._self, this._then);

  final _CompleteLessonResponseData _self;
  final $Res Function(_CompleteLessonResponseData) _then;

/// Create a copy of CompleteLessonResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xpReceived = null,Object? totalXp = null,Object? streakDays = null,Object? isNextModuleUnlocked = null,}) {
  return _then(_CompleteLessonResponseData(
xpReceived: null == xpReceived ? _self.xpReceived : xpReceived // ignore: cast_nullable_to_non_nullable
as int,totalXp: null == totalXp ? _self.totalXp : totalXp // ignore: cast_nullable_to_non_nullable
as int,streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,isNextModuleUnlocked: null == isNextModuleUnlocked ? _self.isNextModuleUnlocked : isNextModuleUnlocked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CompleteLessonResponse {

 bool get success; CompleteLessonResponseData get data;
/// Create a copy of CompleteLessonResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteLessonResponseCopyWith<CompleteLessonResponse> get copyWith => _$CompleteLessonResponseCopyWithImpl<CompleteLessonResponse>(this as CompleteLessonResponse, _$identity);

  /// Serializes this CompleteLessonResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteLessonResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CompleteLessonResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $CompleteLessonResponseCopyWith<$Res>  {
  factory $CompleteLessonResponseCopyWith(CompleteLessonResponse value, $Res Function(CompleteLessonResponse) _then) = _$CompleteLessonResponseCopyWithImpl;
@useResult
$Res call({
 bool success, CompleteLessonResponseData data
});


$CompleteLessonResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CompleteLessonResponseCopyWithImpl<$Res>
    implements $CompleteLessonResponseCopyWith<$Res> {
  _$CompleteLessonResponseCopyWithImpl(this._self, this._then);

  final CompleteLessonResponse _self;
  final $Res Function(CompleteLessonResponse) _then;

/// Create a copy of CompleteLessonResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(CompleteLessonResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompleteLessonResponseData,
  ));
}
/// Create a copy of CompleteLessonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompleteLessonResponseDataCopyWith<$Res> get data {
  
  return $CompleteLessonResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompleteLessonResponse].
extension CompleteLessonResponsePatterns on CompleteLessonResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteLessonResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteLessonResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteLessonResponse value)  $default,){
final _that = this;
switch (_that) {
case _CompleteLessonResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteLessonResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteLessonResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CompleteLessonResponseData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteLessonResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CompleteLessonResponseData data)  $default,) {final _that = this;
switch (_that) {
case _CompleteLessonResponse():
return $default(_that.success,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CompleteLessonResponseData data)?  $default,) {final _that = this;
switch (_that) {
case _CompleteLessonResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteLessonResponse implements CompleteLessonResponse {
  const _CompleteLessonResponse({required this.success, required this.data});
  factory _CompleteLessonResponse.fromJson(Map<String, dynamic> json) => _$CompleteLessonResponseFromJson(json);

@override final  bool success;
@override final  CompleteLessonResponseData data;

/// Create a copy of CompleteLessonResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteLessonResponseCopyWith<_CompleteLessonResponse> get copyWith => __$CompleteLessonResponseCopyWithImpl<_CompleteLessonResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteLessonResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteLessonResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'CompleteLessonResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CompleteLessonResponseCopyWith<$Res> implements $CompleteLessonResponseCopyWith<$Res> {
  factory _$CompleteLessonResponseCopyWith(_CompleteLessonResponse value, $Res Function(_CompleteLessonResponse) _then) = __$CompleteLessonResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, CompleteLessonResponseData data
});


@override $CompleteLessonResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CompleteLessonResponseCopyWithImpl<$Res>
    implements _$CompleteLessonResponseCopyWith<$Res> {
  __$CompleteLessonResponseCopyWithImpl(this._self, this._then);

  final _CompleteLessonResponse _self;
  final $Res Function(_CompleteLessonResponse) _then;

/// Create a copy of CompleteLessonResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_CompleteLessonResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompleteLessonResponseData,
  ));
}

/// Create a copy of CompleteLessonResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompleteLessonResponseDataCopyWith<$Res> get data {
  
  return $CompleteLessonResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
