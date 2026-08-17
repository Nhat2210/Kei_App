// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LevelDto {

 String get id; String get code; String get name;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'sort_order') int get sortOrder;
/// Create a copy of LevelDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelDtoCopyWith<LevelDto> get copyWith => _$LevelDtoCopyWithImpl<LevelDto>(this as LevelDto, _$identity);

  /// Serializes this LevelDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelDto&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,isActive,sortOrder);

@override
String toString() {
  return 'LevelDto(id: $id, code: $code, name: $name, isActive: $isActive, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $LevelDtoCopyWith<$Res>  {
  factory $LevelDtoCopyWith(LevelDto value, $Res Function(LevelDto) _then) = _$LevelDtoCopyWithImpl;
@useResult
$Res call({
 String id, String code, String name,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'sort_order') int sortOrder
});




}
/// @nodoc
class _$LevelDtoCopyWithImpl<$Res>
    implements $LevelDtoCopyWith<$Res> {
  _$LevelDtoCopyWithImpl(this._self, this._then);

  final LevelDto _self;
  final $Res Function(LevelDto) _then;

/// Create a copy of LevelDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? name = null,Object? isActive = null,Object? sortOrder = null,}) {
  return _then(LevelDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelDto].
extension LevelDtoPatterns on LevelDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelDto value)  $default,){
final _that = this;
switch (_that) {
case _LevelDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelDto value)?  $default,){
final _that = this;
switch (_that) {
case _LevelDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String code,  String name, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'sort_order')  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelDto() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.isActive,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String code,  String name, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'sort_order')  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _LevelDto():
return $default(_that.id,_that.code,_that.name,_that.isActive,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String code,  String name, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'sort_order')  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _LevelDto() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.isActive,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelDto implements LevelDto {
  const _LevelDto({required this.id, required this.code, required this.name, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'sort_order') required this.sortOrder});
  factory _LevelDto.fromJson(Map<String, dynamic> json) => _$LevelDtoFromJson(json);

@override final  String id;
@override final  String code;
@override final  String name;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'sort_order') final  int sortOrder;

/// Create a copy of LevelDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelDtoCopyWith<_LevelDto> get copyWith => __$LevelDtoCopyWithImpl<_LevelDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelDto&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,isActive,sortOrder);

@override
String toString() {
  return 'LevelDto(id: $id, code: $code, name: $name, isActive: $isActive, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$LevelDtoCopyWith<$Res> implements $LevelDtoCopyWith<$Res> {
  factory _$LevelDtoCopyWith(_LevelDto value, $Res Function(_LevelDto) _then) = __$LevelDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String code, String name,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'sort_order') int sortOrder
});




}
/// @nodoc
class __$LevelDtoCopyWithImpl<$Res>
    implements _$LevelDtoCopyWith<$Res> {
  __$LevelDtoCopyWithImpl(this._self, this._then);

  final _LevelDto _self;
  final $Res Function(_LevelDto) _then;

/// Create a copy of LevelDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? name = null,Object? isActive = null,Object? sortOrder = null,}) {
  return _then(_LevelDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LessonDto {

 String get id;@JsonKey(name: 'module_id') String get moduleId; String get name;@JsonKey(name: 'xp_reward') int get xpReward;@JsonKey(name: 'sort_order') int get sortOrder;
/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonDtoCopyWith<LessonDto> get copyWith => _$LessonDtoCopyWithImpl<LessonDto>(this as LessonDto, _$identity);

  /// Serializes this LessonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleId,name,xpReward,sortOrder);

@override
String toString() {
  return 'LessonDto(id: $id, moduleId: $moduleId, name: $name, xpReward: $xpReward, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $LessonDtoCopyWith<$Res>  {
  factory $LessonDtoCopyWith(LessonDto value, $Res Function(LessonDto) _then) = _$LessonDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'module_id') String moduleId, String name,@JsonKey(name: 'xp_reward') int xpReward,@JsonKey(name: 'sort_order') int sortOrder
});




}
/// @nodoc
class _$LessonDtoCopyWithImpl<$Res>
    implements $LessonDtoCopyWith<$Res> {
  _$LessonDtoCopyWithImpl(this._self, this._then);

  final LessonDto _self;
  final $Res Function(LessonDto) _then;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? moduleId = null,Object? name = null,Object? xpReward = null,Object? sortOrder = null,}) {
  return _then(LessonDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonDto].
extension LessonDtoPatterns on LessonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonDto value)  $default,){
final _that = this;
switch (_that) {
case _LessonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonDto value)?  $default,){
final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'module_id')  String moduleId,  String name, @JsonKey(name: 'xp_reward')  int xpReward, @JsonKey(name: 'sort_order')  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
return $default(_that.id,_that.moduleId,_that.name,_that.xpReward,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'module_id')  String moduleId,  String name, @JsonKey(name: 'xp_reward')  int xpReward, @JsonKey(name: 'sort_order')  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _LessonDto():
return $default(_that.id,_that.moduleId,_that.name,_that.xpReward,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'module_id')  String moduleId,  String name, @JsonKey(name: 'xp_reward')  int xpReward, @JsonKey(name: 'sort_order')  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _LessonDto() when $default != null:
return $default(_that.id,_that.moduleId,_that.name,_that.xpReward,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonDto implements LessonDto {
  const _LessonDto({required this.id, @JsonKey(name: 'module_id') required this.moduleId, required this.name, @JsonKey(name: 'xp_reward') required this.xpReward, @JsonKey(name: 'sort_order') required this.sortOrder});
  factory _LessonDto.fromJson(Map<String, dynamic> json) => _$LessonDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'module_id') final  String moduleId;
@override final  String name;
@override@JsonKey(name: 'xp_reward') final  int xpReward;
@override@JsonKey(name: 'sort_order') final  int sortOrder;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonDtoCopyWith<_LessonDto> get copyWith => __$LessonDtoCopyWithImpl<_LessonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleId,name,xpReward,sortOrder);

@override
String toString() {
  return 'LessonDto(id: $id, moduleId: $moduleId, name: $name, xpReward: $xpReward, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$LessonDtoCopyWith<$Res> implements $LessonDtoCopyWith<$Res> {
  factory _$LessonDtoCopyWith(_LessonDto value, $Res Function(_LessonDto) _then) = __$LessonDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'module_id') String moduleId, String name,@JsonKey(name: 'xp_reward') int xpReward,@JsonKey(name: 'sort_order') int sortOrder
});




}
/// @nodoc
class __$LessonDtoCopyWithImpl<$Res>
    implements _$LessonDtoCopyWith<$Res> {
  __$LessonDtoCopyWithImpl(this._self, this._then);

  final _LessonDto _self;
  final $Res Function(_LessonDto) _then;

/// Create a copy of LessonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? moduleId = null,Object? name = null,Object? xpReward = null,Object? sortOrder = null,}) {
  return _then(_LessonDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ModuleDto {

 String get id;@JsonKey(name: 'level_id') String get levelId; String get name;@JsonKey(name: 'sort_order') int get sortOrder; bool get isLocked; int get progressPercent; List<LessonDto> get lessons;
/// Create a copy of ModuleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleDtoCopyWith<ModuleDto> get copyWith => _$ModuleDtoCopyWithImpl<ModuleDto>(this as ModuleDto, _$identity);

  /// Serializes this ModuleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent)&&const DeepCollectionEquality().equals(other.lessons, lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,levelId,name,sortOrder,isLocked,progressPercent,const DeepCollectionEquality().hash(lessons));

@override
String toString() {
  return 'ModuleDto(id: $id, levelId: $levelId, name: $name, sortOrder: $sortOrder, isLocked: $isLocked, progressPercent: $progressPercent, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class $ModuleDtoCopyWith<$Res>  {
  factory $ModuleDtoCopyWith(ModuleDto value, $Res Function(ModuleDto) _then) = _$ModuleDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'level_id') String levelId, String name,@JsonKey(name: 'sort_order') int sortOrder, bool isLocked, int progressPercent, List<LessonDto> lessons
});




}
/// @nodoc
class _$ModuleDtoCopyWithImpl<$Res>
    implements $ModuleDtoCopyWith<$Res> {
  _$ModuleDtoCopyWithImpl(this._self, this._then);

  final ModuleDto _self;
  final $Res Function(ModuleDto) _then;

/// Create a copy of ModuleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? levelId = null,Object? name = null,Object? sortOrder = null,Object? isLocked = null,Object? progressPercent = null,Object? lessons = null,}) {
  return _then(ModuleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleDto].
extension ModuleDtoPatterns on ModuleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleDto value)  $default,){
final _that = this;
switch (_that) {
case _ModuleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleDto value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'level_id')  String levelId,  String name, @JsonKey(name: 'sort_order')  int sortOrder,  bool isLocked,  int progressPercent,  List<LessonDto> lessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleDto() when $default != null:
return $default(_that.id,_that.levelId,_that.name,_that.sortOrder,_that.isLocked,_that.progressPercent,_that.lessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'level_id')  String levelId,  String name, @JsonKey(name: 'sort_order')  int sortOrder,  bool isLocked,  int progressPercent,  List<LessonDto> lessons)  $default,) {final _that = this;
switch (_that) {
case _ModuleDto():
return $default(_that.id,_that.levelId,_that.name,_that.sortOrder,_that.isLocked,_that.progressPercent,_that.lessons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'level_id')  String levelId,  String name, @JsonKey(name: 'sort_order')  int sortOrder,  bool isLocked,  int progressPercent,  List<LessonDto> lessons)?  $default,) {final _that = this;
switch (_that) {
case _ModuleDto() when $default != null:
return $default(_that.id,_that.levelId,_that.name,_that.sortOrder,_that.isLocked,_that.progressPercent,_that.lessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleDto implements ModuleDto {
  const _ModuleDto({required this.id, @JsonKey(name: 'level_id') required this.levelId, required this.name, @JsonKey(name: 'sort_order') required this.sortOrder, this.isLocked = false, this.progressPercent = 0,  List<LessonDto> lessons = const []}): _lessons = lessons;
  factory _ModuleDto.fromJson(Map<String, dynamic> json) => _$ModuleDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'level_id') final  String levelId;
@override final  String name;
@override@JsonKey(name: 'sort_order') final  int sortOrder;
@override@JsonKey() final  bool isLocked;
@override@JsonKey() final  int progressPercent;
 final  List<LessonDto> _lessons;
@override@JsonKey() List<LessonDto> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}


/// Create a copy of ModuleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleDtoCopyWith<_ModuleDto> get copyWith => __$ModuleDtoCopyWithImpl<_ModuleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.levelId, levelId) || other.levelId == levelId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent)&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,levelId,name,sortOrder,isLocked,progressPercent,const DeepCollectionEquality().hash(_lessons));

@override
String toString() {
  return 'ModuleDto(id: $id, levelId: $levelId, name: $name, sortOrder: $sortOrder, isLocked: $isLocked, progressPercent: $progressPercent, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$ModuleDtoCopyWith<$Res> implements $ModuleDtoCopyWith<$Res> {
  factory _$ModuleDtoCopyWith(_ModuleDto value, $Res Function(_ModuleDto) _then) = __$ModuleDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'level_id') String levelId, String name,@JsonKey(name: 'sort_order') int sortOrder, bool isLocked, int progressPercent, List<LessonDto> lessons
});




}
/// @nodoc
class __$ModuleDtoCopyWithImpl<$Res>
    implements _$ModuleDtoCopyWith<$Res> {
  __$ModuleDtoCopyWithImpl(this._self, this._then);

  final _ModuleDto _self;
  final $Res Function(_ModuleDto) _then;

/// Create a copy of ModuleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? levelId = null,Object? name = null,Object? sortOrder = null,Object? isLocked = null,Object? progressPercent = null,Object? lessons = null,}) {
  return _then(_ModuleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isLocked: null == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonDto>,
  ));
}


}


/// @nodoc
mixin _$VocabularyDto {

 String get id; String get word; String get meaning; String get reading;
/// Create a copy of VocabularyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VocabularyDtoCopyWith<VocabularyDto> get copyWith => _$VocabularyDtoCopyWithImpl<VocabularyDto>(this as VocabularyDto, _$identity);

  /// Serializes this VocabularyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VocabularyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.word, word) || other.word == word)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.reading, reading) || other.reading == reading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,word,meaning,reading);

@override
String toString() {
  return 'VocabularyDto(id: $id, word: $word, meaning: $meaning, reading: $reading)';
}


}

/// @nodoc
abstract mixin class $VocabularyDtoCopyWith<$Res>  {
  factory $VocabularyDtoCopyWith(VocabularyDto value, $Res Function(VocabularyDto) _then) = _$VocabularyDtoCopyWithImpl;
@useResult
$Res call({
 String id, String word, String meaning, String reading
});




}
/// @nodoc
class _$VocabularyDtoCopyWithImpl<$Res>
    implements $VocabularyDtoCopyWith<$Res> {
  _$VocabularyDtoCopyWithImpl(this._self, this._then);

  final VocabularyDto _self;
  final $Res Function(VocabularyDto) _then;

/// Create a copy of VocabularyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? word = null,Object? meaning = null,Object? reading = null,}) {
  return _then(VocabularyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VocabularyDto].
extension VocabularyDtoPatterns on VocabularyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VocabularyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VocabularyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VocabularyDto value)  $default,){
final _that = this;
switch (_that) {
case _VocabularyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VocabularyDto value)?  $default,){
final _that = this;
switch (_that) {
case _VocabularyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String word,  String meaning,  String reading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VocabularyDto() when $default != null:
return $default(_that.id,_that.word,_that.meaning,_that.reading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String word,  String meaning,  String reading)  $default,) {final _that = this;
switch (_that) {
case _VocabularyDto():
return $default(_that.id,_that.word,_that.meaning,_that.reading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String word,  String meaning,  String reading)?  $default,) {final _that = this;
switch (_that) {
case _VocabularyDto() when $default != null:
return $default(_that.id,_that.word,_that.meaning,_that.reading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VocabularyDto implements VocabularyDto {
  const _VocabularyDto({required this.id, required this.word, required this.meaning, required this.reading});
  factory _VocabularyDto.fromJson(Map<String, dynamic> json) => _$VocabularyDtoFromJson(json);

@override final  String id;
@override final  String word;
@override final  String meaning;
@override final  String reading;

/// Create a copy of VocabularyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VocabularyDtoCopyWith<_VocabularyDto> get copyWith => __$VocabularyDtoCopyWithImpl<_VocabularyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VocabularyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VocabularyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.word, word) || other.word == word)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.reading, reading) || other.reading == reading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,word,meaning,reading);

@override
String toString() {
  return 'VocabularyDto(id: $id, word: $word, meaning: $meaning, reading: $reading)';
}


}

/// @nodoc
abstract mixin class _$VocabularyDtoCopyWith<$Res> implements $VocabularyDtoCopyWith<$Res> {
  factory _$VocabularyDtoCopyWith(_VocabularyDto value, $Res Function(_VocabularyDto) _then) = __$VocabularyDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String word, String meaning, String reading
});




}
/// @nodoc
class __$VocabularyDtoCopyWithImpl<$Res>
    implements _$VocabularyDtoCopyWith<$Res> {
  __$VocabularyDtoCopyWithImpl(this._self, this._then);

  final _VocabularyDto _self;
  final $Res Function(_VocabularyDto) _then;

/// Create a copy of VocabularyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? word = null,Object? meaning = null,Object? reading = null,}) {
  return _then(_VocabularyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,reading: null == reading ? _self.reading : reading // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KanjiDto {

 String get id; String get character; String get meaning; String? get onyomi; String? get kunyomi;
/// Create a copy of KanjiDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KanjiDtoCopyWith<KanjiDto> get copyWith => _$KanjiDtoCopyWithImpl<KanjiDto>(this as KanjiDto, _$identity);

  /// Serializes this KanjiDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KanjiDto&&(identical(other.id, id) || other.id == id)&&(identical(other.character, character) || other.character == character)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.onyomi, onyomi) || other.onyomi == onyomi)&&(identical(other.kunyomi, kunyomi) || other.kunyomi == kunyomi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,character,meaning,onyomi,kunyomi);

@override
String toString() {
  return 'KanjiDto(id: $id, character: $character, meaning: $meaning, onyomi: $onyomi, kunyomi: $kunyomi)';
}


}

/// @nodoc
abstract mixin class $KanjiDtoCopyWith<$Res>  {
  factory $KanjiDtoCopyWith(KanjiDto value, $Res Function(KanjiDto) _then) = _$KanjiDtoCopyWithImpl;
@useResult
$Res call({
 String id, String character, String meaning, String? onyomi, String? kunyomi
});




}
/// @nodoc
class _$KanjiDtoCopyWithImpl<$Res>
    implements $KanjiDtoCopyWith<$Res> {
  _$KanjiDtoCopyWithImpl(this._self, this._then);

  final KanjiDto _self;
  final $Res Function(KanjiDto) _then;

/// Create a copy of KanjiDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? character = null,Object? meaning = null,Object? onyomi = freezed,Object? kunyomi = freezed,}) {
  return _then(KanjiDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,onyomi: freezed == onyomi ? _self.onyomi : onyomi // ignore: cast_nullable_to_non_nullable
as String?,kunyomi: freezed == kunyomi ? _self.kunyomi : kunyomi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KanjiDto].
extension KanjiDtoPatterns on KanjiDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KanjiDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KanjiDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KanjiDto value)  $default,){
final _that = this;
switch (_that) {
case _KanjiDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KanjiDto value)?  $default,){
final _that = this;
switch (_that) {
case _KanjiDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String character,  String meaning,  String? onyomi,  String? kunyomi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KanjiDto() when $default != null:
return $default(_that.id,_that.character,_that.meaning,_that.onyomi,_that.kunyomi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String character,  String meaning,  String? onyomi,  String? kunyomi)  $default,) {final _that = this;
switch (_that) {
case _KanjiDto():
return $default(_that.id,_that.character,_that.meaning,_that.onyomi,_that.kunyomi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String character,  String meaning,  String? onyomi,  String? kunyomi)?  $default,) {final _that = this;
switch (_that) {
case _KanjiDto() when $default != null:
return $default(_that.id,_that.character,_that.meaning,_that.onyomi,_that.kunyomi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KanjiDto implements KanjiDto {
  const _KanjiDto({required this.id, required this.character, required this.meaning, this.onyomi, this.kunyomi});
  factory _KanjiDto.fromJson(Map<String, dynamic> json) => _$KanjiDtoFromJson(json);

@override final  String id;
@override final  String character;
@override final  String meaning;
@override final  String? onyomi;
@override final  String? kunyomi;

/// Create a copy of KanjiDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KanjiDtoCopyWith<_KanjiDto> get copyWith => __$KanjiDtoCopyWithImpl<_KanjiDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KanjiDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KanjiDto&&(identical(other.id, id) || other.id == id)&&(identical(other.character, character) || other.character == character)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.onyomi, onyomi) || other.onyomi == onyomi)&&(identical(other.kunyomi, kunyomi) || other.kunyomi == kunyomi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,character,meaning,onyomi,kunyomi);

@override
String toString() {
  return 'KanjiDto(id: $id, character: $character, meaning: $meaning, onyomi: $onyomi, kunyomi: $kunyomi)';
}


}

/// @nodoc
abstract mixin class _$KanjiDtoCopyWith<$Res> implements $KanjiDtoCopyWith<$Res> {
  factory _$KanjiDtoCopyWith(_KanjiDto value, $Res Function(_KanjiDto) _then) = __$KanjiDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String character, String meaning, String? onyomi, String? kunyomi
});




}
/// @nodoc
class __$KanjiDtoCopyWithImpl<$Res>
    implements _$KanjiDtoCopyWith<$Res> {
  __$KanjiDtoCopyWithImpl(this._self, this._then);

  final _KanjiDto _self;
  final $Res Function(_KanjiDto) _then;

/// Create a copy of KanjiDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? character = null,Object? meaning = null,Object? onyomi = freezed,Object? kunyomi = freezed,}) {
  return _then(_KanjiDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,onyomi: freezed == onyomi ? _self.onyomi : onyomi // ignore: cast_nullable_to_non_nullable
as String?,kunyomi: freezed == kunyomi ? _self.kunyomi : kunyomi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GrammarDto {

 String get id; String get pattern; String get meaning; String? get usage;
/// Create a copy of GrammarDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrammarDtoCopyWith<GrammarDto> get copyWith => _$GrammarDtoCopyWithImpl<GrammarDto>(this as GrammarDto, _$identity);

  /// Serializes this GrammarDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrammarDto&&(identical(other.id, id) || other.id == id)&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pattern,meaning,usage);

@override
String toString() {
  return 'GrammarDto(id: $id, pattern: $pattern, meaning: $meaning, usage: $usage)';
}


}

/// @nodoc
abstract mixin class $GrammarDtoCopyWith<$Res>  {
  factory $GrammarDtoCopyWith(GrammarDto value, $Res Function(GrammarDto) _then) = _$GrammarDtoCopyWithImpl;
@useResult
$Res call({
 String id, String pattern, String meaning, String? usage
});




}
/// @nodoc
class _$GrammarDtoCopyWithImpl<$Res>
    implements $GrammarDtoCopyWith<$Res> {
  _$GrammarDtoCopyWithImpl(this._self, this._then);

  final GrammarDto _self;
  final $Res Function(GrammarDto) _then;

/// Create a copy of GrammarDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? pattern = null,Object? meaning = null,Object? usage = freezed,}) {
  return _then(GrammarDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pattern: null == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GrammarDto].
extension GrammarDtoPatterns on GrammarDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrammarDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrammarDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrammarDto value)  $default,){
final _that = this;
switch (_that) {
case _GrammarDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrammarDto value)?  $default,){
final _that = this;
switch (_that) {
case _GrammarDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String pattern,  String meaning,  String? usage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrammarDto() when $default != null:
return $default(_that.id,_that.pattern,_that.meaning,_that.usage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String pattern,  String meaning,  String? usage)  $default,) {final _that = this;
switch (_that) {
case _GrammarDto():
return $default(_that.id,_that.pattern,_that.meaning,_that.usage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String pattern,  String meaning,  String? usage)?  $default,) {final _that = this;
switch (_that) {
case _GrammarDto() when $default != null:
return $default(_that.id,_that.pattern,_that.meaning,_that.usage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrammarDto implements GrammarDto {
  const _GrammarDto({required this.id, required this.pattern, required this.meaning, this.usage});
  factory _GrammarDto.fromJson(Map<String, dynamic> json) => _$GrammarDtoFromJson(json);

@override final  String id;
@override final  String pattern;
@override final  String meaning;
@override final  String? usage;

/// Create a copy of GrammarDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrammarDtoCopyWith<_GrammarDto> get copyWith => __$GrammarDtoCopyWithImpl<_GrammarDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrammarDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrammarDto&&(identical(other.id, id) || other.id == id)&&(identical(other.pattern, pattern) || other.pattern == pattern)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.usage, usage) || other.usage == usage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pattern,meaning,usage);

@override
String toString() {
  return 'GrammarDto(id: $id, pattern: $pattern, meaning: $meaning, usage: $usage)';
}


}

/// @nodoc
abstract mixin class _$GrammarDtoCopyWith<$Res> implements $GrammarDtoCopyWith<$Res> {
  factory _$GrammarDtoCopyWith(_GrammarDto value, $Res Function(_GrammarDto) _then) = __$GrammarDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String pattern, String meaning, String? usage
});




}
/// @nodoc
class __$GrammarDtoCopyWithImpl<$Res>
    implements _$GrammarDtoCopyWith<$Res> {
  __$GrammarDtoCopyWithImpl(this._self, this._then);

  final _GrammarDto _self;
  final $Res Function(_GrammarDto) _then;

/// Create a copy of GrammarDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? pattern = null,Object? meaning = null,Object? usage = freezed,}) {
  return _then(_GrammarDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,pattern: null == pattern ? _self.pattern : pattern // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ExerciseDto {

 String get id;@JsonKey(name: 'lesson_id') String get lessonId; String get question;
/// Create a copy of ExerciseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseDtoCopyWith<ExerciseDto> get copyWith => _$ExerciseDtoCopyWithImpl<ExerciseDto>(this as ExerciseDto, _$identity);

  /// Serializes this ExerciseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,question);

@override
String toString() {
  return 'ExerciseDto(id: $id, lessonId: $lessonId, question: $question)';
}


}

/// @nodoc
abstract mixin class $ExerciseDtoCopyWith<$Res>  {
  factory $ExerciseDtoCopyWith(ExerciseDto value, $Res Function(ExerciseDto) _then) = _$ExerciseDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'lesson_id') String lessonId, String question
});




}
/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res>
    implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._self, this._then);

  final ExerciseDto _self;
  final $Res Function(ExerciseDto) _then;

/// Create a copy of ExerciseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lessonId = null,Object? question = null,}) {
  return _then(ExerciseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseDto].
extension ExerciseDtoPatterns on ExerciseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseDto value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'lesson_id')  String lessonId,  String question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseDto() when $default != null:
return $default(_that.id,_that.lessonId,_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'lesson_id')  String lessonId,  String question)  $default,) {final _that = this;
switch (_that) {
case _ExerciseDto():
return $default(_that.id,_that.lessonId,_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'lesson_id')  String lessonId,  String question)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseDto() when $default != null:
return $default(_that.id,_that.lessonId,_that.question);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExerciseDto implements ExerciseDto {
  const _ExerciseDto({required this.id, @JsonKey(name: 'lesson_id') required this.lessonId, required this.question});
  factory _ExerciseDto.fromJson(Map<String, dynamic> json) => _$ExerciseDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'lesson_id') final  String lessonId;
@override final  String question;

/// Create a copy of ExerciseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseDtoCopyWith<_ExerciseDto> get copyWith => __$ExerciseDtoCopyWithImpl<_ExerciseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExerciseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lessonId, lessonId) || other.lessonId == lessonId)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lessonId,question);

@override
String toString() {
  return 'ExerciseDto(id: $id, lessonId: $lessonId, question: $question)';
}


}

/// @nodoc
abstract mixin class _$ExerciseDtoCopyWith<$Res> implements $ExerciseDtoCopyWith<$Res> {
  factory _$ExerciseDtoCopyWith(_ExerciseDto value, $Res Function(_ExerciseDto) _then) = __$ExerciseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'lesson_id') String lessonId, String question
});




}
/// @nodoc
class __$ExerciseDtoCopyWithImpl<$Res>
    implements _$ExerciseDtoCopyWith<$Res> {
  __$ExerciseDtoCopyWithImpl(this._self, this._then);

  final _ExerciseDto _self;
  final $Res Function(_ExerciseDto) _then;

/// Create a copy of ExerciseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lessonId = null,Object? question = null,}) {
  return _then(_ExerciseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lessonId: null == lessonId ? _self.lessonId : lessonId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubmitExerciseResponse {

@JsonKey(name: 'is_correct') bool get isCorrect;@JsonKey(name: 'correct_answer') String get correctAnswer; String? get explanation;
/// Create a copy of SubmitExerciseResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitExerciseResponseCopyWith<SubmitExerciseResponse> get copyWith => _$SubmitExerciseResponseCopyWithImpl<SubmitExerciseResponse>(this as SubmitExerciseResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitExerciseResponse&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}


@override
int get hashCode => Object.hash(runtimeType,isCorrect,correctAnswer,explanation);

@override
String toString() {
  return 'SubmitExerciseResponse(isCorrect: $isCorrect, correctAnswer: $correctAnswer, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class $SubmitExerciseResponseCopyWith<$Res>  {
  factory $SubmitExerciseResponseCopyWith(SubmitExerciseResponse value, $Res Function(SubmitExerciseResponse) _then) = _$SubmitExerciseResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_correct') bool isCorrect,@JsonKey(name: 'correct_answer') String correctAnswer, String? explanation
});




}
/// @nodoc
class _$SubmitExerciseResponseCopyWithImpl<$Res>
    implements $SubmitExerciseResponseCopyWith<$Res> {
  _$SubmitExerciseResponseCopyWithImpl(this._self, this._then);

  final SubmitExerciseResponse _self;
  final $Res Function(SubmitExerciseResponse) _then;

/// Create a copy of SubmitExerciseResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCorrect = null,Object? correctAnswer = null,Object? explanation = freezed,}) {
  return _then(SubmitExerciseResponse(
isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitExerciseResponse].
extension SubmitExerciseResponsePatterns on SubmitExerciseResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitExerciseResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitExerciseResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitExerciseResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubmitExerciseResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitExerciseResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitExerciseResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_correct')  bool isCorrect, @JsonKey(name: 'correct_answer')  String correctAnswer,  String? explanation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitExerciseResponse() when $default != null:
return $default(_that.isCorrect,_that.correctAnswer,_that.explanation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_correct')  bool isCorrect, @JsonKey(name: 'correct_answer')  String correctAnswer,  String? explanation)  $default,) {final _that = this;
switch (_that) {
case _SubmitExerciseResponse():
return $default(_that.isCorrect,_that.correctAnswer,_that.explanation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_correct')  bool isCorrect, @JsonKey(name: 'correct_answer')  String correctAnswer,  String? explanation)?  $default,) {final _that = this;
switch (_that) {
case _SubmitExerciseResponse() when $default != null:
return $default(_that.isCorrect,_that.correctAnswer,_that.explanation);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitExerciseResponse implements SubmitExerciseResponse {
  const _SubmitExerciseResponse({@JsonKey(name: 'is_correct') required this.isCorrect, @JsonKey(name: 'correct_answer') required this.correctAnswer, this.explanation});
  

@override@JsonKey(name: 'is_correct') final  bool isCorrect;
@override@JsonKey(name: 'correct_answer') final  String correctAnswer;
@override final  String? explanation;

/// Create a copy of SubmitExerciseResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitExerciseResponseCopyWith<_SubmitExerciseResponse> get copyWith => __$SubmitExerciseResponseCopyWithImpl<_SubmitExerciseResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitExerciseResponse&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}


@override
int get hashCode => Object.hash(runtimeType,isCorrect,correctAnswer,explanation);

@override
String toString() {
  return 'SubmitExerciseResponse(isCorrect: $isCorrect, correctAnswer: $correctAnswer, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class _$SubmitExerciseResponseCopyWith<$Res> implements $SubmitExerciseResponseCopyWith<$Res> {
  factory _$SubmitExerciseResponseCopyWith(_SubmitExerciseResponse value, $Res Function(_SubmitExerciseResponse) _then) = __$SubmitExerciseResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_correct') bool isCorrect,@JsonKey(name: 'correct_answer') String correctAnswer, String? explanation
});




}
/// @nodoc
class __$SubmitExerciseResponseCopyWithImpl<$Res>
    implements _$SubmitExerciseResponseCopyWith<$Res> {
  __$SubmitExerciseResponseCopyWithImpl(this._self, this._then);

  final _SubmitExerciseResponse _self;
  final $Res Function(_SubmitExerciseResponse) _then;

/// Create a copy of SubmitExerciseResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCorrect = null,Object? correctAnswer = null,Object? explanation = freezed,}) {
  return _then(_SubmitExerciseResponse(
isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LessonDetailDto {

 String get id;@JsonKey(name: 'module_id') String get moduleId; String get name;@JsonKey(name: 'xp_reward') int get xpReward;@JsonKey(name: 'sort_order') int get sortOrder; List<VocabularyDto> get vocabulary; List<KanjiDto> get kanji; List<GrammarDto> get grammar;
/// Create a copy of LessonDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonDetailDtoCopyWith<LessonDetailDto> get copyWith => _$LessonDetailDtoCopyWithImpl<LessonDetailDto>(this as LessonDetailDto, _$identity);

  /// Serializes this LessonDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other.vocabulary, vocabulary)&&const DeepCollectionEquality().equals(other.kanji, kanji)&&const DeepCollectionEquality().equals(other.grammar, grammar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleId,name,xpReward,sortOrder,const DeepCollectionEquality().hash(vocabulary),const DeepCollectionEquality().hash(kanji),const DeepCollectionEquality().hash(grammar));

@override
String toString() {
  return 'LessonDetailDto(id: $id, moduleId: $moduleId, name: $name, xpReward: $xpReward, sortOrder: $sortOrder, vocabulary: $vocabulary, kanji: $kanji, grammar: $grammar)';
}


}

/// @nodoc
abstract mixin class $LessonDetailDtoCopyWith<$Res>  {
  factory $LessonDetailDtoCopyWith(LessonDetailDto value, $Res Function(LessonDetailDto) _then) = _$LessonDetailDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'module_id') String moduleId, String name,@JsonKey(name: 'xp_reward') int xpReward,@JsonKey(name: 'sort_order') int sortOrder, List<VocabularyDto> vocabulary, List<KanjiDto> kanji, List<GrammarDto> grammar
});




}
/// @nodoc
class _$LessonDetailDtoCopyWithImpl<$Res>
    implements $LessonDetailDtoCopyWith<$Res> {
  _$LessonDetailDtoCopyWithImpl(this._self, this._then);

  final LessonDetailDto _self;
  final $Res Function(LessonDetailDto) _then;

/// Create a copy of LessonDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? moduleId = null,Object? name = null,Object? xpReward = null,Object? sortOrder = null,Object? vocabulary = null,Object? kanji = null,Object? grammar = null,}) {
  return _then(LessonDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,vocabulary: null == vocabulary ? _self.vocabulary : vocabulary // ignore: cast_nullable_to_non_nullable
as List<VocabularyDto>,kanji: null == kanji ? _self.kanji : kanji // ignore: cast_nullable_to_non_nullable
as List<KanjiDto>,grammar: null == grammar ? _self.grammar : grammar // ignore: cast_nullable_to_non_nullable
as List<GrammarDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonDetailDto].
extension LessonDetailDtoPatterns on LessonDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _LessonDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _LessonDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'module_id')  String moduleId,  String name, @JsonKey(name: 'xp_reward')  int xpReward, @JsonKey(name: 'sort_order')  int sortOrder,  List<VocabularyDto> vocabulary,  List<KanjiDto> kanji,  List<GrammarDto> grammar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonDetailDto() when $default != null:
return $default(_that.id,_that.moduleId,_that.name,_that.xpReward,_that.sortOrder,_that.vocabulary,_that.kanji,_that.grammar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'module_id')  String moduleId,  String name, @JsonKey(name: 'xp_reward')  int xpReward, @JsonKey(name: 'sort_order')  int sortOrder,  List<VocabularyDto> vocabulary,  List<KanjiDto> kanji,  List<GrammarDto> grammar)  $default,) {final _that = this;
switch (_that) {
case _LessonDetailDto():
return $default(_that.id,_that.moduleId,_that.name,_that.xpReward,_that.sortOrder,_that.vocabulary,_that.kanji,_that.grammar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'module_id')  String moduleId,  String name, @JsonKey(name: 'xp_reward')  int xpReward, @JsonKey(name: 'sort_order')  int sortOrder,  List<VocabularyDto> vocabulary,  List<KanjiDto> kanji,  List<GrammarDto> grammar)?  $default,) {final _that = this;
switch (_that) {
case _LessonDetailDto() when $default != null:
return $default(_that.id,_that.moduleId,_that.name,_that.xpReward,_that.sortOrder,_that.vocabulary,_that.kanji,_that.grammar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonDetailDto implements LessonDetailDto {
  const _LessonDetailDto({required this.id, @JsonKey(name: 'module_id') required this.moduleId, required this.name, @JsonKey(name: 'xp_reward') required this.xpReward, @JsonKey(name: 'sort_order') required this.sortOrder,  List<VocabularyDto> vocabulary = const [],  List<KanjiDto> kanji = const [],  List<GrammarDto> grammar = const []}): _vocabulary = vocabulary,_kanji = kanji,_grammar = grammar;
  factory _LessonDetailDto.fromJson(Map<String, dynamic> json) => _$LessonDetailDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'module_id') final  String moduleId;
@override final  String name;
@override@JsonKey(name: 'xp_reward') final  int xpReward;
@override@JsonKey(name: 'sort_order') final  int sortOrder;
 final  List<VocabularyDto> _vocabulary;
@override@JsonKey() List<VocabularyDto> get vocabulary {
  if (_vocabulary is EqualUnmodifiableListView) return _vocabulary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vocabulary);
}

 final  List<KanjiDto> _kanji;
@override@JsonKey() List<KanjiDto> get kanji {
  if (_kanji is EqualUnmodifiableListView) return _kanji;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_kanji);
}

 final  List<GrammarDto> _grammar;
@override@JsonKey() List<GrammarDto> get grammar {
  if (_grammar is EqualUnmodifiableListView) return _grammar;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_grammar);
}


/// Create a copy of LessonDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonDetailDtoCopyWith<_LessonDetailDto> get copyWith => __$LessonDetailDtoCopyWithImpl<_LessonDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.name, name) || other.name == name)&&(identical(other.xpReward, xpReward) || other.xpReward == xpReward)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&const DeepCollectionEquality().equals(other._vocabulary, _vocabulary)&&const DeepCollectionEquality().equals(other._kanji, _kanji)&&const DeepCollectionEquality().equals(other._grammar, _grammar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,moduleId,name,xpReward,sortOrder,const DeepCollectionEquality().hash(_vocabulary),const DeepCollectionEquality().hash(_kanji),const DeepCollectionEquality().hash(_grammar));

@override
String toString() {
  return 'LessonDetailDto(id: $id, moduleId: $moduleId, name: $name, xpReward: $xpReward, sortOrder: $sortOrder, vocabulary: $vocabulary, kanji: $kanji, grammar: $grammar)';
}


}

/// @nodoc
abstract mixin class _$LessonDetailDtoCopyWith<$Res> implements $LessonDetailDtoCopyWith<$Res> {
  factory _$LessonDetailDtoCopyWith(_LessonDetailDto value, $Res Function(_LessonDetailDto) _then) = __$LessonDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'module_id') String moduleId, String name,@JsonKey(name: 'xp_reward') int xpReward,@JsonKey(name: 'sort_order') int sortOrder, List<VocabularyDto> vocabulary, List<KanjiDto> kanji, List<GrammarDto> grammar
});




}
/// @nodoc
class __$LessonDetailDtoCopyWithImpl<$Res>
    implements _$LessonDetailDtoCopyWith<$Res> {
  __$LessonDetailDtoCopyWithImpl(this._self, this._then);

  final _LessonDetailDto _self;
  final $Res Function(_LessonDetailDto) _then;

/// Create a copy of LessonDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? moduleId = null,Object? name = null,Object? xpReward = null,Object? sortOrder = null,Object? vocabulary = null,Object? kanji = null,Object? grammar = null,}) {
  return _then(_LessonDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,xpReward: null == xpReward ? _self.xpReward : xpReward // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,vocabulary: null == vocabulary ? _self._vocabulary : vocabulary // ignore: cast_nullable_to_non_nullable
as List<VocabularyDto>,kanji: null == kanji ? _self._kanji : kanji // ignore: cast_nullable_to_non_nullable
as List<KanjiDto>,grammar: null == grammar ? _self._grammar : grammar // ignore: cast_nullable_to_non_nullable
as List<GrammarDto>,
  ));
}


}


/// @nodoc
mixin _$LevelListResponse {

 bool get success; List<LevelDto> get data;
/// Create a copy of LevelListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelListResponseCopyWith<LevelListResponse> get copyWith => _$LevelListResponseCopyWithImpl<LevelListResponse>(this as LevelListResponse, _$identity);

  /// Serializes this LevelListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LevelListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $LevelListResponseCopyWith<$Res>  {
  factory $LevelListResponseCopyWith(LevelListResponse value, $Res Function(LevelListResponse) _then) = _$LevelListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<LevelDto> data
});




}
/// @nodoc
class _$LevelListResponseCopyWithImpl<$Res>
    implements $LevelListResponseCopyWith<$Res> {
  _$LevelListResponseCopyWithImpl(this._self, this._then);

  final LevelListResponse _self;
  final $Res Function(LevelListResponse) _then;

/// Create a copy of LevelListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(LevelListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LevelDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelListResponse].
extension LevelListResponsePatterns on LevelListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelListResponse value)  $default,){
final _that = this;
switch (_that) {
case _LevelListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LevelListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<LevelDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<LevelDto> data)  $default,) {final _that = this;
switch (_that) {
case _LevelListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<LevelDto> data)?  $default,) {final _that = this;
switch (_that) {
case _LevelListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelListResponse implements LevelListResponse {
  const _LevelListResponse({required this.success, required  List<LevelDto> data}): _data = data;
  factory _LevelListResponse.fromJson(Map<String, dynamic> json) => _$LevelListResponseFromJson(json);

@override final  bool success;
 final  List<LevelDto> _data;
@override List<LevelDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of LevelListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelListResponseCopyWith<_LevelListResponse> get copyWith => __$LevelListResponseCopyWithImpl<_LevelListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LevelListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LevelListResponseCopyWith<$Res> implements $LevelListResponseCopyWith<$Res> {
  factory _$LevelListResponseCopyWith(_LevelListResponse value, $Res Function(_LevelListResponse) _then) = __$LevelListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<LevelDto> data
});




}
/// @nodoc
class __$LevelListResponseCopyWithImpl<$Res>
    implements _$LevelListResponseCopyWith<$Res> {
  __$LevelListResponseCopyWithImpl(this._self, this._then);

  final _LevelListResponse _self;
  final $Res Function(_LevelListResponse) _then;

/// Create a copy of LevelListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_LevelListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LevelDto>,
  ));
}


}


/// @nodoc
mixin _$ModuleListResponse {

 bool get success; List<ModuleDto> get data;
/// Create a copy of ModuleListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModuleListResponseCopyWith<ModuleListResponse> get copyWith => _$ModuleListResponseCopyWithImpl<ModuleListResponse>(this as ModuleListResponse, _$identity);

  /// Serializes this ModuleListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModuleListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ModuleListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ModuleListResponseCopyWith<$Res>  {
  factory $ModuleListResponseCopyWith(ModuleListResponse value, $Res Function(ModuleListResponse) _then) = _$ModuleListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<ModuleDto> data
});




}
/// @nodoc
class _$ModuleListResponseCopyWithImpl<$Res>
    implements $ModuleListResponseCopyWith<$Res> {
  _$ModuleListResponseCopyWithImpl(this._self, this._then);

  final ModuleListResponse _self;
  final $Res Function(ModuleListResponse) _then;

/// Create a copy of ModuleListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(ModuleListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ModuleDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ModuleListResponse].
extension ModuleListResponsePatterns on ModuleListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModuleListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModuleListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModuleListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ModuleListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModuleListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ModuleListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ModuleDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModuleListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ModuleDto> data)  $default,) {final _that = this;
switch (_that) {
case _ModuleListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ModuleDto> data)?  $default,) {final _that = this;
switch (_that) {
case _ModuleListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ModuleListResponse implements ModuleListResponse {
  const _ModuleListResponse({required this.success, required  List<ModuleDto> data}): _data = data;
  factory _ModuleListResponse.fromJson(Map<String, dynamic> json) => _$ModuleListResponseFromJson(json);

@override final  bool success;
 final  List<ModuleDto> _data;
@override List<ModuleDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ModuleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModuleListResponseCopyWith<_ModuleListResponse> get copyWith => __$ModuleListResponseCopyWithImpl<_ModuleListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModuleListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModuleListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ModuleListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ModuleListResponseCopyWith<$Res> implements $ModuleListResponseCopyWith<$Res> {
  factory _$ModuleListResponseCopyWith(_ModuleListResponse value, $Res Function(_ModuleListResponse) _then) = __$ModuleListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ModuleDto> data
});




}
/// @nodoc
class __$ModuleListResponseCopyWithImpl<$Res>
    implements _$ModuleListResponseCopyWith<$Res> {
  __$ModuleListResponseCopyWithImpl(this._self, this._then);

  final _ModuleListResponse _self;
  final $Res Function(_ModuleListResponse) _then;

/// Create a copy of ModuleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ModuleListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ModuleDto>,
  ));
}


}


/// @nodoc
mixin _$LessonListResponse {

 bool get success; List<LessonDto> get data;
/// Create a copy of LessonListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonListResponseCopyWith<LessonListResponse> get copyWith => _$LessonListResponseCopyWithImpl<LessonListResponse>(this as LessonListResponse, _$identity);

  /// Serializes this LessonListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LessonListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $LessonListResponseCopyWith<$Res>  {
  factory $LessonListResponseCopyWith(LessonListResponse value, $Res Function(LessonListResponse) _then) = _$LessonListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<LessonDto> data
});




}
/// @nodoc
class _$LessonListResponseCopyWithImpl<$Res>
    implements $LessonListResponseCopyWith<$Res> {
  _$LessonListResponseCopyWithImpl(this._self, this._then);

  final LessonListResponse _self;
  final $Res Function(LessonListResponse) _then;

/// Create a copy of LessonListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(LessonListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LessonDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonListResponse].
extension LessonListResponsePatterns on LessonListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonListResponse value)  $default,){
final _that = this;
switch (_that) {
case _LessonListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LessonListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<LessonDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<LessonDto> data)  $default,) {final _that = this;
switch (_that) {
case _LessonListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<LessonDto> data)?  $default,) {final _that = this;
switch (_that) {
case _LessonListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonListResponse implements LessonListResponse {
  const _LessonListResponse({required this.success, required  List<LessonDto> data}): _data = data;
  factory _LessonListResponse.fromJson(Map<String, dynamic> json) => _$LessonListResponseFromJson(json);

@override final  bool success;
 final  List<LessonDto> _data;
@override List<LessonDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of LessonListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonListResponseCopyWith<_LessonListResponse> get copyWith => __$LessonListResponseCopyWithImpl<_LessonListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LessonListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LessonListResponseCopyWith<$Res> implements $LessonListResponseCopyWith<$Res> {
  factory _$LessonListResponseCopyWith(_LessonListResponse value, $Res Function(_LessonListResponse) _then) = __$LessonListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<LessonDto> data
});




}
/// @nodoc
class __$LessonListResponseCopyWithImpl<$Res>
    implements _$LessonListResponseCopyWith<$Res> {
  __$LessonListResponseCopyWithImpl(this._self, this._then);

  final _LessonListResponse _self;
  final $Res Function(_LessonListResponse) _then;

/// Create a copy of LessonListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_LessonListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LessonDto>,
  ));
}


}


/// @nodoc
mixin _$LessonDetailResponse {

 bool get success; LessonDetailDto get data;
/// Create a copy of LessonDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonDetailResponseCopyWith<LessonDetailResponse> get copyWith => _$LessonDetailResponseCopyWithImpl<LessonDetailResponse>(this as LessonDetailResponse, _$identity);

  /// Serializes this LessonDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'LessonDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $LessonDetailResponseCopyWith<$Res>  {
  factory $LessonDetailResponseCopyWith(LessonDetailResponse value, $Res Function(LessonDetailResponse) _then) = _$LessonDetailResponseCopyWithImpl;
@useResult
$Res call({
 bool success, LessonDetailDto data
});


$LessonDetailDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$LessonDetailResponseCopyWithImpl<$Res>
    implements $LessonDetailResponseCopyWith<$Res> {
  _$LessonDetailResponseCopyWithImpl(this._self, this._then);

  final LessonDetailResponse _self;
  final $Res Function(LessonDetailResponse) _then;

/// Create a copy of LessonDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(LessonDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LessonDetailDto,
  ));
}
/// Create a copy of LessonDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonDetailDtoCopyWith<$Res> get data {
  
  return $LessonDetailDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LessonDetailResponse].
extension LessonDetailResponsePatterns on LessonDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _LessonDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LessonDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  LessonDetailDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonDetailResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  LessonDetailDto data)  $default,) {final _that = this;
switch (_that) {
case _LessonDetailResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  LessonDetailDto data)?  $default,) {final _that = this;
switch (_that) {
case _LessonDetailResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonDetailResponse implements LessonDetailResponse {
  const _LessonDetailResponse({required this.success, required this.data});
  factory _LessonDetailResponse.fromJson(Map<String, dynamic> json) => _$LessonDetailResponseFromJson(json);

@override final  bool success;
@override final  LessonDetailDto data;

/// Create a copy of LessonDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonDetailResponseCopyWith<_LessonDetailResponse> get copyWith => __$LessonDetailResponseCopyWithImpl<_LessonDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonDetailResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'LessonDetailResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LessonDetailResponseCopyWith<$Res> implements $LessonDetailResponseCopyWith<$Res> {
  factory _$LessonDetailResponseCopyWith(_LessonDetailResponse value, $Res Function(_LessonDetailResponse) _then) = __$LessonDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, LessonDetailDto data
});


@override $LessonDetailDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$LessonDetailResponseCopyWithImpl<$Res>
    implements _$LessonDetailResponseCopyWith<$Res> {
  __$LessonDetailResponseCopyWithImpl(this._self, this._then);

  final _LessonDetailResponse _self;
  final $Res Function(_LessonDetailResponse) _then;

/// Create a copy of LessonDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_LessonDetailResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LessonDetailDto,
  ));
}

/// Create a copy of LessonDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LessonDetailDtoCopyWith<$Res> get data {
  
  return $LessonDetailDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ExerciseListResponse {

 bool get success; List<ExerciseDto> get data;
/// Create a copy of ExerciseListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseListResponseCopyWith<ExerciseListResponse> get copyWith => _$ExerciseListResponseCopyWithImpl<ExerciseListResponse>(this as ExerciseListResponse, _$identity);

  /// Serializes this ExerciseListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ExerciseListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ExerciseListResponseCopyWith<$Res>  {
  factory $ExerciseListResponseCopyWith(ExerciseListResponse value, $Res Function(ExerciseListResponse) _then) = _$ExerciseListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<ExerciseDto> data
});




}
/// @nodoc
class _$ExerciseListResponseCopyWithImpl<$Res>
    implements $ExerciseListResponseCopyWith<$Res> {
  _$ExerciseListResponseCopyWithImpl(this._self, this._then);

  final ExerciseListResponse _self;
  final $Res Function(ExerciseListResponse) _then;

/// Create a copy of ExerciseListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(ExerciseListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ExerciseDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseListResponse].
extension ExerciseListResponsePatterns on ExerciseListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseListResponse value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<ExerciseDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<ExerciseDto> data)  $default,) {final _that = this;
switch (_that) {
case _ExerciseListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<ExerciseDto> data)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExerciseListResponse implements ExerciseListResponse {
  const _ExerciseListResponse({required this.success, required  List<ExerciseDto> data}): _data = data;
  factory _ExerciseListResponse.fromJson(Map<String, dynamic> json) => _$ExerciseListResponseFromJson(json);

@override final  bool success;
 final  List<ExerciseDto> _data;
@override List<ExerciseDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ExerciseListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseListResponseCopyWith<_ExerciseListResponse> get copyWith => __$ExerciseListResponseCopyWithImpl<_ExerciseListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExerciseListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ExerciseListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ExerciseListResponseCopyWith<$Res> implements $ExerciseListResponseCopyWith<$Res> {
  factory _$ExerciseListResponseCopyWith(_ExerciseListResponse value, $Res Function(_ExerciseListResponse) _then) = __$ExerciseListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<ExerciseDto> data
});




}
/// @nodoc
class __$ExerciseListResponseCopyWithImpl<$Res>
    implements _$ExerciseListResponseCopyWith<$Res> {
  __$ExerciseListResponseCopyWithImpl(this._self, this._then);

  final _ExerciseListResponse _self;
  final $Res Function(_ExerciseListResponse) _then;

/// Create a copy of ExerciseListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ExerciseListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ExerciseDto>,
  ));
}


}

// dart format on
