// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volume_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
mixin _$VolumeInfo {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get authors => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get averageRating => throw _privateConstructorUsedError;
  int? get ratingsCount => throw _privateConstructorUsedError;
  ImageLinks? get imageLinks => throw _privateConstructorUsedError;
  String? get previewLink => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;

  /// Serializes this VolumeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
    VolumeInfo value,
    $Res Function(VolumeInfo) then,
  ) = _$VolumeInfoCopyWithImpl<$Res, VolumeInfo>;
  @useResult
  $Res call({
    String? title,
    List<String>? authors,
    String? description,
    double? averageRating,
    int? ratingsCount,
    ImageLinks? imageLinks,
    String? previewLink,
    List<String>? categories,
  });

  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res, $Val extends VolumeInfo>
    implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? description = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? imageLinks = freezed,
    Object? previewLink = freezed,
    Object? categories = freezed,
  }) {
    return _then(
      _value.copyWith(
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            authors:
                freezed == authors
                    ? _value.authors
                    : authors // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            averageRating:
                freezed == averageRating
                    ? _value.averageRating
                    : averageRating // ignore: cast_nullable_to_non_nullable
                        as double?,
            ratingsCount:
                freezed == ratingsCount
                    ? _value.ratingsCount
                    : ratingsCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            imageLinks:
                freezed == imageLinks
                    ? _value.imageLinks
                    : imageLinks // ignore: cast_nullable_to_non_nullable
                        as ImageLinks?,
            previewLink:
                freezed == previewLink
                    ? _value.previewLink
                    : previewLink // ignore: cast_nullable_to_non_nullable
                        as String?,
            categories:
                freezed == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageLinksCopyWith<$Res>? get imageLinks {
    if (_value.imageLinks == null) {
      return null;
    }

    return $ImageLinksCopyWith<$Res>(_value.imageLinks!, (value) {
      return _then(_value.copyWith(imageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VolumeInfoImplCopyWith<$Res>
    implements $VolumeInfoCopyWith<$Res> {
  factory _$$VolumeInfoImplCopyWith(
    _$VolumeInfoImpl value,
    $Res Function(_$VolumeInfoImpl) then,
  ) = __$$VolumeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? title,
    List<String>? authors,
    String? description,
    double? averageRating,
    int? ratingsCount,
    ImageLinks? imageLinks,
    String? previewLink,
    List<String>? categories,
  });

  @override
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class __$$VolumeInfoImplCopyWithImpl<$Res>
    extends _$VolumeInfoCopyWithImpl<$Res, _$VolumeInfoImpl>
    implements _$$VolumeInfoImplCopyWith<$Res> {
  __$$VolumeInfoImplCopyWithImpl(
    _$VolumeInfoImpl _value,
    $Res Function(_$VolumeInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? description = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? imageLinks = freezed,
    Object? previewLink = freezed,
    Object? categories = freezed,
  }) {
    return _then(
      _$VolumeInfoImpl(
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        authors:
            freezed == authors
                ? _value._authors
                : authors // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        averageRating:
            freezed == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                    as double?,
        ratingsCount:
            freezed == ratingsCount
                ? _value.ratingsCount
                : ratingsCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        imageLinks:
            freezed == imageLinks
                ? _value.imageLinks
                : imageLinks // ignore: cast_nullable_to_non_nullable
                    as ImageLinks?,
        previewLink:
            freezed == previewLink
                ? _value.previewLink
                : previewLink // ignore: cast_nullable_to_non_nullable
                    as String?,
        categories:
            freezed == categories
                ? _value._categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VolumeInfoImpl implements _VolumeInfo {
  const _$VolumeInfoImpl({
    this.title,
    final List<String>? authors,
    this.description,
    this.averageRating,
    this.ratingsCount,
    this.imageLinks,
    this.previewLink,
    final List<String>? categories,
  }) : _authors = authors,
       _categories = categories;

  factory _$VolumeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolumeInfoImplFromJson(json);

  @override
  final String? title;
  final List<String>? _authors;
  @override
  List<String>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final double? averageRating;
  @override
  final int? ratingsCount;
  @override
  final ImageLinks? imageLinks;
  @override
  final String? previewLink;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VolumeInfo(title: $title, authors: $authors, description: $description, averageRating: $averageRating, ratingsCount: $ratingsCount, imageLinks: $imageLinks, previewLink: $previewLink, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolumeInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingsCount, ratingsCount) ||
                other.ratingsCount == ratingsCount) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks) &&
            (identical(other.previewLink, previewLink) ||
                other.previewLink == previewLink) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    const DeepCollectionEquality().hash(_authors),
    description,
    averageRating,
    ratingsCount,
    imageLinks,
    previewLink,
    const DeepCollectionEquality().hash(_categories),
  );

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      __$$VolumeInfoImplCopyWithImpl<_$VolumeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolumeInfoImplToJson(this);
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  const factory _VolumeInfo({
    final String? title,
    final List<String>? authors,
    final String? description,
    final double? averageRating,
    final int? ratingsCount,
    final ImageLinks? imageLinks,
    final String? previewLink,
    final List<String>? categories,
  }) = _$VolumeInfoImpl;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$VolumeInfoImpl.fromJson;

  @override
  String? get title;
  @override
  List<String>? get authors;
  @override
  String? get description;
  @override
  double? get averageRating;
  @override
  int? get ratingsCount;
  @override
  ImageLinks? get imageLinks;
  @override
  String? get previewLink;
  @override
  List<String>? get categories;

  /// Create a copy of VolumeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VolumeInfoImplCopyWith<_$VolumeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
