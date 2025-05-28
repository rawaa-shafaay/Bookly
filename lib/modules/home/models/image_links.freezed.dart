// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImageLinks {

 String? get smallThumbnail; String? get thumbnail;
/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageLinksCopyWith<ImageLinks> get copyWith => _$ImageLinksCopyWithImpl<ImageLinks>(this as ImageLinks, _$identity);

  /// Serializes this ImageLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageLinks&&(identical(other.smallThumbnail, smallThumbnail) || other.smallThumbnail == smallThumbnail)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,smallThumbnail,thumbnail);

@override
String toString() {
  return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ImageLinksCopyWith<$Res>  {
  factory $ImageLinksCopyWith(ImageLinks value, $Res Function(ImageLinks) _then) = _$ImageLinksCopyWithImpl;
@useResult
$Res call({
 String? smallThumbnail, String? thumbnail
});




}
/// @nodoc
class _$ImageLinksCopyWithImpl<$Res>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._self, this._then);

  final ImageLinks _self;
  final $Res Function(ImageLinks) _then;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? smallThumbnail = freezed,Object? thumbnail = freezed,}) {
  return _then(_self.copyWith(
smallThumbnail: freezed == smallThumbnail ? _self.smallThumbnail : smallThumbnail // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ImageLinks implements ImageLinks {
  const _ImageLinks({this.smallThumbnail, this.thumbnail});
  factory _ImageLinks.fromJson(Map<String, dynamic> json) => _$ImageLinksFromJson(json);

@override final  String? smallThumbnail;
@override final  String? thumbnail;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageLinksCopyWith<_ImageLinks> get copyWith => __$ImageLinksCopyWithImpl<_ImageLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageLinks&&(identical(other.smallThumbnail, smallThumbnail) || other.smallThumbnail == smallThumbnail)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,smallThumbnail,thumbnail);

@override
String toString() {
  return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ImageLinksCopyWith<$Res> implements $ImageLinksCopyWith<$Res> {
  factory _$ImageLinksCopyWith(_ImageLinks value, $Res Function(_ImageLinks) _then) = __$ImageLinksCopyWithImpl;
@override @useResult
$Res call({
 String? smallThumbnail, String? thumbnail
});




}
/// @nodoc
class __$ImageLinksCopyWithImpl<$Res>
    implements _$ImageLinksCopyWith<$Res> {
  __$ImageLinksCopyWithImpl(this._self, this._then);

  final _ImageLinks _self;
  final $Res Function(_ImageLinks) _then;

/// Create a copy of ImageLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? smallThumbnail = freezed,Object? thumbnail = freezed,}) {
  return _then(_ImageLinks(
smallThumbnail: freezed == smallThumbnail ? _self.smallThumbnail : smallThumbnail // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
