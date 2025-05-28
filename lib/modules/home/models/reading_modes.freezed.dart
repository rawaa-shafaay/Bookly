// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_modes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingModes {

 bool? get text; bool? get image;
/// Create a copy of ReadingModes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadingModesCopyWith<ReadingModes> get copyWith => _$ReadingModesCopyWithImpl<ReadingModes>(this as ReadingModes, _$identity);

  /// Serializes this ReadingModes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadingModes&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,image);

@override
String toString() {
  return 'ReadingModes(text: $text, image: $image)';
}


}

/// @nodoc
abstract mixin class $ReadingModesCopyWith<$Res>  {
  factory $ReadingModesCopyWith(ReadingModes value, $Res Function(ReadingModes) _then) = _$ReadingModesCopyWithImpl;
@useResult
$Res call({
 bool? text, bool? image
});




}
/// @nodoc
class _$ReadingModesCopyWithImpl<$Res>
    implements $ReadingModesCopyWith<$Res> {
  _$ReadingModesCopyWithImpl(this._self, this._then);

  final ReadingModes _self;
  final $Res Function(ReadingModes) _then;

/// Create a copy of ReadingModes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ReadingModes implements ReadingModes {
  const _ReadingModes({this.text, this.image});
  factory _ReadingModes.fromJson(Map<String, dynamic> json) => _$ReadingModesFromJson(json);

@override final  bool? text;
@override final  bool? image;

/// Create a copy of ReadingModes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadingModesCopyWith<_ReadingModes> get copyWith => __$ReadingModesCopyWithImpl<_ReadingModes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReadingModesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadingModes&&(identical(other.text, text) || other.text == text)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,image);

@override
String toString() {
  return 'ReadingModes(text: $text, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ReadingModesCopyWith<$Res> implements $ReadingModesCopyWith<$Res> {
  factory _$ReadingModesCopyWith(_ReadingModes value, $Res Function(_ReadingModes) _then) = __$ReadingModesCopyWithImpl;
@override @useResult
$Res call({
 bool? text, bool? image
});




}
/// @nodoc
class __$ReadingModesCopyWithImpl<$Res>
    implements _$ReadingModesCopyWith<$Res> {
  __$ReadingModesCopyWithImpl(this._self, this._then);

  final _ReadingModes _self;
  final $Res Function(_ReadingModes) _then;

/// Create a copy of ReadingModes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? image = freezed,}) {
  return _then(_ReadingModes(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
