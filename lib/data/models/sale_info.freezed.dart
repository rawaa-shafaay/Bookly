// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) {
  return _SaleInfo.fromJson(json);
}

/// @nodoc
mixin _$SaleInfo {
  String? get saleability => throw _privateConstructorUsedError;
  RetailPrice? get retailPrice => throw _privateConstructorUsedError;

  /// Serializes this SaleInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaleInfoCopyWith<SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInfoCopyWith<$Res> {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) then) =
      _$SaleInfoCopyWithImpl<$Res, SaleInfo>;
  @useResult
  $Res call({String? saleability, RetailPrice? retailPrice});

  $RetailPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class _$SaleInfoCopyWithImpl<$Res, $Val extends SaleInfo>
    implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? saleability = freezed, Object? retailPrice = freezed}) {
    return _then(
      _value.copyWith(
            saleability:
                freezed == saleability
                    ? _value.saleability
                    : saleability // ignore: cast_nullable_to_non_nullable
                        as String?,
            retailPrice:
                freezed == retailPrice
                    ? _value.retailPrice
                    : retailPrice // ignore: cast_nullable_to_non_nullable
                        as RetailPrice?,
          )
          as $Val,
    );
  }

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RetailPriceCopyWith<$Res>? get retailPrice {
    if (_value.retailPrice == null) {
      return null;
    }

    return $RetailPriceCopyWith<$Res>(_value.retailPrice!, (value) {
      return _then(_value.copyWith(retailPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaleInfoImplCopyWith<$Res>
    implements $SaleInfoCopyWith<$Res> {
  factory _$$SaleInfoImplCopyWith(
    _$SaleInfoImpl value,
    $Res Function(_$SaleInfoImpl) then,
  ) = __$$SaleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? saleability, RetailPrice? retailPrice});

  @override
  $RetailPriceCopyWith<$Res>? get retailPrice;
}

/// @nodoc
class __$$SaleInfoImplCopyWithImpl<$Res>
    extends _$SaleInfoCopyWithImpl<$Res, _$SaleInfoImpl>
    implements _$$SaleInfoImplCopyWith<$Res> {
  __$$SaleInfoImplCopyWithImpl(
    _$SaleInfoImpl _value,
    $Res Function(_$SaleInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? saleability = freezed, Object? retailPrice = freezed}) {
    return _then(
      _$SaleInfoImpl(
        saleability:
            freezed == saleability
                ? _value.saleability
                : saleability // ignore: cast_nullable_to_non_nullable
                    as String?,
        retailPrice:
            freezed == retailPrice
                ? _value.retailPrice
                : retailPrice // ignore: cast_nullable_to_non_nullable
                    as RetailPrice?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleInfoImpl implements _SaleInfo {
  const _$SaleInfoImpl({this.saleability, this.retailPrice});

  factory _$SaleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleInfoImplFromJson(json);

  @override
  final String? saleability;
  @override
  final RetailPrice? retailPrice;

  @override
  String toString() {
    return 'SaleInfo(saleability: $saleability, retailPrice: $retailPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleInfoImpl &&
            (identical(other.saleability, saleability) ||
                other.saleability == saleability) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, saleability, retailPrice);

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleInfoImplCopyWith<_$SaleInfoImpl> get copyWith =>
      __$$SaleInfoImplCopyWithImpl<_$SaleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleInfoImplToJson(this);
  }
}

abstract class _SaleInfo implements SaleInfo {
  const factory _SaleInfo({
    final String? saleability,
    final RetailPrice? retailPrice,
  }) = _$SaleInfoImpl;

  factory _SaleInfo.fromJson(Map<String, dynamic> json) =
      _$SaleInfoImpl.fromJson;

  @override
  String? get saleability;
  @override
  RetailPrice? get retailPrice;

  /// Create a copy of SaleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaleInfoImplCopyWith<_$SaleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
