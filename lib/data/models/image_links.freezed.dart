// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
mixin _$ImageLinks {
  String? get smallThumbnail => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this ImageLinks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
    ImageLinks value,
    $Res Function(ImageLinks) then,
  ) = _$ImageLinksCopyWithImpl<$Res, ImageLinks>;
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res, $Val extends ImageLinks>
    implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? smallThumbnail = freezed, Object? thumbnail = freezed}) {
    return _then(
      _value.copyWith(
            smallThumbnail:
                freezed == smallThumbnail
                    ? _value.smallThumbnail
                    : smallThumbnail // ignore: cast_nullable_to_non_nullable
                        as String?,
            thumbnail:
                freezed == thumbnail
                    ? _value.thumbnail
                    : thumbnail // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImageLinksImplCopyWith<$Res>
    implements $ImageLinksCopyWith<$Res> {
  factory _$$ImageLinksImplCopyWith(
    _$ImageLinksImpl value,
    $Res Function(_$ImageLinksImpl) then,
  ) = __$$ImageLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class __$$ImageLinksImplCopyWithImpl<$Res>
    extends _$ImageLinksCopyWithImpl<$Res, _$ImageLinksImpl>
    implements _$$ImageLinksImplCopyWith<$Res> {
  __$$ImageLinksImplCopyWithImpl(
    _$ImageLinksImpl _value,
    $Res Function(_$ImageLinksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? smallThumbnail = freezed, Object? thumbnail = freezed}) {
    return _then(
      _$ImageLinksImpl(
        smallThumbnail:
            freezed == smallThumbnail
                ? _value.smallThumbnail
                : smallThumbnail // ignore: cast_nullable_to_non_nullable
                    as String?,
        thumbnail:
            freezed == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageLinksImpl implements _ImageLinks {
  const _$ImageLinksImpl({this.smallThumbnail, this.thumbnail});

  factory _$ImageLinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinksImplFromJson(json);

  @override
  final String? smallThumbnail;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinksImpl &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, smallThumbnail, thumbnail);

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      __$$ImageLinksImplCopyWithImpl<_$ImageLinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinksImplToJson(this);
  }
}

abstract class _ImageLinks implements ImageLinks {
  const factory _ImageLinks({
    final String? smallThumbnail,
    final String? thumbnail,
  }) = _$ImageLinksImpl;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$ImageLinksImpl.fromJson;

  @override
  String? get smallThumbnail;
  @override
  String? get thumbnail;

  /// Create a copy of ImageLinks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageLinksImplCopyWith<_$ImageLinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
