// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Book {

 String? get kind; String? get id; String? get etag; String? get selfLink; VolumeInfo? get volumeInfo; SaleInfo? get saleInfo; AccessInfo? get accessInfo; SearchInfo? get searchInfo;
/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookCopyWith<Book> get copyWith => _$BookCopyWithImpl<Book>(this as Book, _$identity);

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Book&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.id, id) || other.id == id)&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.selfLink, selfLink) || other.selfLink == selfLink)&&(identical(other.volumeInfo, volumeInfo) || other.volumeInfo == volumeInfo)&&(identical(other.saleInfo, saleInfo) || other.saleInfo == saleInfo)&&(identical(other.accessInfo, accessInfo) || other.accessInfo == accessInfo)&&(identical(other.searchInfo, searchInfo) || other.searchInfo == searchInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,id,etag,selfLink,volumeInfo,saleInfo,accessInfo,searchInfo);

@override
String toString() {
  return 'Book(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
}


}

/// @nodoc
abstract mixin class $BookCopyWith<$Res>  {
  factory $BookCopyWith(Book value, $Res Function(Book) _then) = _$BookCopyWithImpl;
@useResult
$Res call({
 String? kind, String? id, String? etag, String? selfLink, VolumeInfo? volumeInfo, SaleInfo? saleInfo, AccessInfo? accessInfo, SearchInfo? searchInfo
});


$VolumeInfoCopyWith<$Res>? get volumeInfo;$SaleInfoCopyWith<$Res>? get saleInfo;$AccessInfoCopyWith<$Res>? get accessInfo;$SearchInfoCopyWith<$Res>? get searchInfo;

}
/// @nodoc
class _$BookCopyWithImpl<$Res>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._self, this._then);

  final Book _self;
  final $Res Function(Book) _then;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = freezed,Object? id = freezed,Object? etag = freezed,Object? selfLink = freezed,Object? volumeInfo = freezed,Object? saleInfo = freezed,Object? accessInfo = freezed,Object? searchInfo = freezed,}) {
  return _then(_self.copyWith(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,selfLink: freezed == selfLink ? _self.selfLink : selfLink // ignore: cast_nullable_to_non_nullable
as String?,volumeInfo: freezed == volumeInfo ? _self.volumeInfo : volumeInfo // ignore: cast_nullable_to_non_nullable
as VolumeInfo?,saleInfo: freezed == saleInfo ? _self.saleInfo : saleInfo // ignore: cast_nullable_to_non_nullable
as SaleInfo?,accessInfo: freezed == accessInfo ? _self.accessInfo : accessInfo // ignore: cast_nullable_to_non_nullable
as AccessInfo?,searchInfo: freezed == searchInfo ? _self.searchInfo : searchInfo // ignore: cast_nullable_to_non_nullable
as SearchInfo?,
  ));
}
/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_self.volumeInfo == null) {
    return null;
  }

  return $VolumeInfoCopyWith<$Res>(_self.volumeInfo!, (value) {
    return _then(_self.copyWith(volumeInfo: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleInfoCopyWith<$Res>? get saleInfo {
    if (_self.saleInfo == null) {
    return null;
  }

  return $SaleInfoCopyWith<$Res>(_self.saleInfo!, (value) {
    return _then(_self.copyWith(saleInfo: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessInfoCopyWith<$Res>? get accessInfo {
    if (_self.accessInfo == null) {
    return null;
  }

  return $AccessInfoCopyWith<$Res>(_self.accessInfo!, (value) {
    return _then(_self.copyWith(accessInfo: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchInfoCopyWith<$Res>? get searchInfo {
    if (_self.searchInfo == null) {
    return null;
  }

  return $SearchInfoCopyWith<$Res>(_self.searchInfo!, (value) {
    return _then(_self.copyWith(searchInfo: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Book implements Book {
  const _Book({this.kind, this.id, this.etag, this.selfLink, this.volumeInfo, this.saleInfo, this.accessInfo, this.searchInfo});
  factory _Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

@override final  String? kind;
@override final  String? id;
@override final  String? etag;
@override final  String? selfLink;
@override final  VolumeInfo? volumeInfo;
@override final  SaleInfo? saleInfo;
@override final  AccessInfo? accessInfo;
@override final  SearchInfo? searchInfo;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookCopyWith<_Book> get copyWith => __$BookCopyWithImpl<_Book>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Book&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.id, id) || other.id == id)&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.selfLink, selfLink) || other.selfLink == selfLink)&&(identical(other.volumeInfo, volumeInfo) || other.volumeInfo == volumeInfo)&&(identical(other.saleInfo, saleInfo) || other.saleInfo == saleInfo)&&(identical(other.accessInfo, accessInfo) || other.accessInfo == accessInfo)&&(identical(other.searchInfo, searchInfo) || other.searchInfo == searchInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,id,etag,selfLink,volumeInfo,saleInfo,accessInfo,searchInfo);

@override
String toString() {
  return 'Book(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
}


}

/// @nodoc
abstract mixin class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) _then) = __$BookCopyWithImpl;
@override @useResult
$Res call({
 String? kind, String? id, String? etag, String? selfLink, VolumeInfo? volumeInfo, SaleInfo? saleInfo, AccessInfo? accessInfo, SearchInfo? searchInfo
});


@override $VolumeInfoCopyWith<$Res>? get volumeInfo;@override $SaleInfoCopyWith<$Res>? get saleInfo;@override $AccessInfoCopyWith<$Res>? get accessInfo;@override $SearchInfoCopyWith<$Res>? get searchInfo;

}
/// @nodoc
class __$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(this._self, this._then);

  final _Book _self;
  final $Res Function(_Book) _then;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = freezed,Object? id = freezed,Object? etag = freezed,Object? selfLink = freezed,Object? volumeInfo = freezed,Object? saleInfo = freezed,Object? accessInfo = freezed,Object? searchInfo = freezed,}) {
  return _then(_Book(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,selfLink: freezed == selfLink ? _self.selfLink : selfLink // ignore: cast_nullable_to_non_nullable
as String?,volumeInfo: freezed == volumeInfo ? _self.volumeInfo : volumeInfo // ignore: cast_nullable_to_non_nullable
as VolumeInfo?,saleInfo: freezed == saleInfo ? _self.saleInfo : saleInfo // ignore: cast_nullable_to_non_nullable
as SaleInfo?,accessInfo: freezed == accessInfo ? _self.accessInfo : accessInfo // ignore: cast_nullable_to_non_nullable
as AccessInfo?,searchInfo: freezed == searchInfo ? _self.searchInfo : searchInfo // ignore: cast_nullable_to_non_nullable
as SearchInfo?,
  ));
}

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_self.volumeInfo == null) {
    return null;
  }

  return $VolumeInfoCopyWith<$Res>(_self.volumeInfo!, (value) {
    return _then(_self.copyWith(volumeInfo: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleInfoCopyWith<$Res>? get saleInfo {
    if (_self.saleInfo == null) {
    return null;
  }

  return $SaleInfoCopyWith<$Res>(_self.saleInfo!, (value) {
    return _then(_self.copyWith(saleInfo: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessInfoCopyWith<$Res>? get accessInfo {
    if (_self.accessInfo == null) {
    return null;
  }

  return $AccessInfoCopyWith<$Res>(_self.accessInfo!, (value) {
    return _then(_self.copyWith(accessInfo: value));
  });
}/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchInfoCopyWith<$Res>? get searchInfo {
    if (_self.searchInfo == null) {
    return null;
  }

  return $SearchInfoCopyWith<$Res>(_self.searchInfo!, (value) {
    return _then(_self.copyWith(searchInfo: value));
  });
}
}

// dart format on
