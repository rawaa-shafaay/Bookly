// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'industry_identifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndustryIdentifier {

 String? get type; String? get identifier;
/// Create a copy of IndustryIdentifier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndustryIdentifierCopyWith<IndustryIdentifier> get copyWith => _$IndustryIdentifierCopyWithImpl<IndustryIdentifier>(this as IndustryIdentifier, _$identity);

  /// Serializes this IndustryIdentifier to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndustryIdentifier&&(identical(other.type, type) || other.type == type)&&(identical(other.identifier, identifier) || other.identifier == identifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,identifier);

@override
String toString() {
  return 'IndustryIdentifier(type: $type, identifier: $identifier)';
}


}

/// @nodoc
abstract mixin class $IndustryIdentifierCopyWith<$Res>  {
  factory $IndustryIdentifierCopyWith(IndustryIdentifier value, $Res Function(IndustryIdentifier) _then) = _$IndustryIdentifierCopyWithImpl;
@useResult
$Res call({
 String? type, String? identifier
});




}
/// @nodoc
class _$IndustryIdentifierCopyWithImpl<$Res>
    implements $IndustryIdentifierCopyWith<$Res> {
  _$IndustryIdentifierCopyWithImpl(this._self, this._then);

  final IndustryIdentifier _self;
  final $Res Function(IndustryIdentifier) _then;

/// Create a copy of IndustryIdentifier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? identifier = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IndustryIdentifier implements IndustryIdentifier {
  const _IndustryIdentifier({this.type, this.identifier});
  factory _IndustryIdentifier.fromJson(Map<String, dynamic> json) => _$IndustryIdentifierFromJson(json);

@override final  String? type;
@override final  String? identifier;

/// Create a copy of IndustryIdentifier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith => __$IndustryIdentifierCopyWithImpl<_IndustryIdentifier>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndustryIdentifierToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndustryIdentifier&&(identical(other.type, type) || other.type == type)&&(identical(other.identifier, identifier) || other.identifier == identifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,identifier);

@override
String toString() {
  return 'IndustryIdentifier(type: $type, identifier: $identifier)';
}


}

/// @nodoc
abstract mixin class _$IndustryIdentifierCopyWith<$Res> implements $IndustryIdentifierCopyWith<$Res> {
  factory _$IndustryIdentifierCopyWith(_IndustryIdentifier value, $Res Function(_IndustryIdentifier) _then) = __$IndustryIdentifierCopyWithImpl;
@override @useResult
$Res call({
 String? type, String? identifier
});




}
/// @nodoc
class __$IndustryIdentifierCopyWithImpl<$Res>
    implements _$IndustryIdentifierCopyWith<$Res> {
  __$IndustryIdentifierCopyWithImpl(this._self, this._then);

  final _IndustryIdentifier _self;
  final $Res Function(_IndustryIdentifier) _then;

/// Create a copy of IndustryIdentifier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? identifier = freezed,}) {
  return _then(_IndustryIdentifier(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
