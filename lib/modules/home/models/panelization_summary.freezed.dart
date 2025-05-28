// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panelization_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PanelizationSummary {

 bool? get containsEpubBubbles; bool? get containsImageBubbles;
/// Create a copy of PanelizationSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PanelizationSummaryCopyWith<PanelizationSummary> get copyWith => _$PanelizationSummaryCopyWithImpl<PanelizationSummary>(this as PanelizationSummary, _$identity);

  /// Serializes this PanelizationSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PanelizationSummary&&(identical(other.containsEpubBubbles, containsEpubBubbles) || other.containsEpubBubbles == containsEpubBubbles)&&(identical(other.containsImageBubbles, containsImageBubbles) || other.containsImageBubbles == containsImageBubbles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,containsEpubBubbles,containsImageBubbles);

@override
String toString() {
  return 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';
}


}

/// @nodoc
abstract mixin class $PanelizationSummaryCopyWith<$Res>  {
  factory $PanelizationSummaryCopyWith(PanelizationSummary value, $Res Function(PanelizationSummary) _then) = _$PanelizationSummaryCopyWithImpl;
@useResult
$Res call({
 bool? containsEpubBubbles, bool? containsImageBubbles
});




}
/// @nodoc
class _$PanelizationSummaryCopyWithImpl<$Res>
    implements $PanelizationSummaryCopyWith<$Res> {
  _$PanelizationSummaryCopyWithImpl(this._self, this._then);

  final PanelizationSummary _self;
  final $Res Function(PanelizationSummary) _then;

/// Create a copy of PanelizationSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? containsEpubBubbles = freezed,Object? containsImageBubbles = freezed,}) {
  return _then(_self.copyWith(
containsEpubBubbles: freezed == containsEpubBubbles ? _self.containsEpubBubbles : containsEpubBubbles // ignore: cast_nullable_to_non_nullable
as bool?,containsImageBubbles: freezed == containsImageBubbles ? _self.containsImageBubbles : containsImageBubbles // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PanelizationSummary implements PanelizationSummary {
  const _PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});
  factory _PanelizationSummary.fromJson(Map<String, dynamic> json) => _$PanelizationSummaryFromJson(json);

@override final  bool? containsEpubBubbles;
@override final  bool? containsImageBubbles;

/// Create a copy of PanelizationSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PanelizationSummaryCopyWith<_PanelizationSummary> get copyWith => __$PanelizationSummaryCopyWithImpl<_PanelizationSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PanelizationSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PanelizationSummary&&(identical(other.containsEpubBubbles, containsEpubBubbles) || other.containsEpubBubbles == containsEpubBubbles)&&(identical(other.containsImageBubbles, containsImageBubbles) || other.containsImageBubbles == containsImageBubbles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,containsEpubBubbles,containsImageBubbles);

@override
String toString() {
  return 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';
}


}

/// @nodoc
abstract mixin class _$PanelizationSummaryCopyWith<$Res> implements $PanelizationSummaryCopyWith<$Res> {
  factory _$PanelizationSummaryCopyWith(_PanelizationSummary value, $Res Function(_PanelizationSummary) _then) = __$PanelizationSummaryCopyWithImpl;
@override @useResult
$Res call({
 bool? containsEpubBubbles, bool? containsImageBubbles
});




}
/// @nodoc
class __$PanelizationSummaryCopyWithImpl<$Res>
    implements _$PanelizationSummaryCopyWith<$Res> {
  __$PanelizationSummaryCopyWithImpl(this._self, this._then);

  final _PanelizationSummary _self;
  final $Res Function(_PanelizationSummary) _then;

/// Create a copy of PanelizationSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? containsEpubBubbles = freezed,Object? containsImageBubbles = freezed,}) {
  return _then(_PanelizationSummary(
containsEpubBubbles: freezed == containsEpubBubbles ? _self.containsEpubBubbles : containsEpubBubbles // ignore: cast_nullable_to_non_nullable
as bool?,containsImageBubbles: freezed == containsImageBubbles ? _self.containsImageBubbles : containsImageBubbles // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
