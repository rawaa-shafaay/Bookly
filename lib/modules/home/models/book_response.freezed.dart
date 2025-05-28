// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookResponse {

 String? get kind; int? get totalItems; List<Book>? get items;
/// Create a copy of BookResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookResponseCopyWith<BookResponse> get copyWith => _$BookResponseCopyWithImpl<BookResponse>(this as BookResponse, _$identity);

  /// Serializes this BookResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookResponse&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,totalItems,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'BookResponse(kind: $kind, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class $BookResponseCopyWith<$Res>  {
  factory $BookResponseCopyWith(BookResponse value, $Res Function(BookResponse) _then) = _$BookResponseCopyWithImpl;
@useResult
$Res call({
 String? kind, int? totalItems, List<Book>? items
});




}
/// @nodoc
class _$BookResponseCopyWithImpl<$Res>
    implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._self, this._then);

  final BookResponse _self;
  final $Res Function(BookResponse) _then;

/// Create a copy of BookResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kind = freezed,Object? totalItems = freezed,Object? items = freezed,}) {
  return _then(_self.copyWith(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Book>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BookResponse implements BookResponse {
  const _BookResponse({this.kind, this.totalItems, final  List<Book>? items}): _items = items;
  factory _BookResponse.fromJson(Map<String, dynamic> json) => _$BookResponseFromJson(json);

@override final  String? kind;
@override final  int? totalItems;
 final  List<Book>? _items;
@override List<Book>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BookResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookResponseCopyWith<_BookResponse> get copyWith => __$BookResponseCopyWithImpl<_BookResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookResponse&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kind,totalItems,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'BookResponse(kind: $kind, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class _$BookResponseCopyWith<$Res> implements $BookResponseCopyWith<$Res> {
  factory _$BookResponseCopyWith(_BookResponse value, $Res Function(_BookResponse) _then) = __$BookResponseCopyWithImpl;
@override @useResult
$Res call({
 String? kind, int? totalItems, List<Book>? items
});




}
/// @nodoc
class __$BookResponseCopyWithImpl<$Res>
    implements _$BookResponseCopyWith<$Res> {
  __$BookResponseCopyWithImpl(this._self, this._then);

  final _BookResponse _self;
  final $Res Function(_BookResponse) _then;

/// Create a copy of BookResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kind = freezed,Object? totalItems = freezed,Object? items = freezed,}) {
  return _then(_BookResponse(
kind: freezed == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Book>?,
  ));
}


}

// dart format on
