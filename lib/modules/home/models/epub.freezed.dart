// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'epub.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Epub {

 bool? get isAvailable;
/// Create a copy of Epub
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EpubCopyWith<Epub> get copyWith => _$EpubCopyWithImpl<Epub>(this as Epub, _$identity);

  /// Serializes this Epub to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Epub&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isAvailable);

@override
String toString() {
  return 'Epub(isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class $EpubCopyWith<$Res>  {
  factory $EpubCopyWith(Epub value, $Res Function(Epub) _then) = _$EpubCopyWithImpl;
@useResult
$Res call({
 bool? isAvailable
});




}
/// @nodoc
class _$EpubCopyWithImpl<$Res>
    implements $EpubCopyWith<$Res> {
  _$EpubCopyWithImpl(this._self, this._then);

  final Epub _self;
  final $Res Function(Epub) _then;

/// Create a copy of Epub
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAvailable = freezed,}) {
  return _then(_self.copyWith(
isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Epub implements Epub {
  const _Epub({this.isAvailable});
  factory _Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);

@override final  bool? isAvailable;

/// Create a copy of Epub
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EpubCopyWith<_Epub> get copyWith => __$EpubCopyWithImpl<_Epub>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EpubToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Epub&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isAvailable);

@override
String toString() {
  return 'Epub(isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$EpubCopyWith<$Res> implements $EpubCopyWith<$Res> {
  factory _$EpubCopyWith(_Epub value, $Res Function(_Epub) _then) = __$EpubCopyWithImpl;
@override @useResult
$Res call({
 bool? isAvailable
});




}
/// @nodoc
class __$EpubCopyWithImpl<$Res>
    implements _$EpubCopyWith<$Res> {
  __$EpubCopyWithImpl(this._self, this._then);

  final _Epub _self;
  final $Res Function(_Epub) _then;

/// Create a copy of Epub
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAvailable = freezed,}) {
  return _then(_Epub(
isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
