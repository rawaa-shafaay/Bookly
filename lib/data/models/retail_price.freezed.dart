// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retail_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RetailPrice _$RetailPriceFromJson(Map<String, dynamic> json) {
  return _RetailPrice.fromJson(json);
}

/// @nodoc
mixin _$RetailPrice {
  double? get amount => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this RetailPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetailPriceCopyWith<RetailPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetailPriceCopyWith<$Res> {
  factory $RetailPriceCopyWith(
    RetailPrice value,
    $Res Function(RetailPrice) then,
  ) = _$RetailPriceCopyWithImpl<$Res, RetailPrice>;
  @useResult
  $Res call({double? amount, String? currencyCode});
}

/// @nodoc
class _$RetailPriceCopyWithImpl<$Res, $Val extends RetailPrice>
    implements $RetailPriceCopyWith<$Res> {
  _$RetailPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = freezed, Object? currencyCode = freezed}) {
    return _then(
      _value.copyWith(
            amount:
                freezed == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double?,
            currencyCode:
                freezed == currencyCode
                    ? _value.currencyCode
                    : currencyCode // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RetailPriceImplCopyWith<$Res>
    implements $RetailPriceCopyWith<$Res> {
  factory _$$RetailPriceImplCopyWith(
    _$RetailPriceImpl value,
    $Res Function(_$RetailPriceImpl) then,
  ) = __$$RetailPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? amount, String? currencyCode});
}

/// @nodoc
class __$$RetailPriceImplCopyWithImpl<$Res>
    extends _$RetailPriceCopyWithImpl<$Res, _$RetailPriceImpl>
    implements _$$RetailPriceImplCopyWith<$Res> {
  __$$RetailPriceImplCopyWithImpl(
    _$RetailPriceImpl _value,
    $Res Function(_$RetailPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = freezed, Object? currencyCode = freezed}) {
    return _then(
      _$RetailPriceImpl(
        amount:
            freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double?,
        currencyCode:
            freezed == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RetailPriceImpl implements _RetailPrice {
  const _$RetailPriceImpl({this.amount, this.currencyCode});

  factory _$RetailPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetailPriceImplFromJson(json);

  @override
  final double? amount;
  @override
  final String? currencyCode;

  @override
  String toString() {
    return 'RetailPrice(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetailPriceImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetailPriceImplCopyWith<_$RetailPriceImpl> get copyWith =>
      __$$RetailPriceImplCopyWithImpl<_$RetailPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetailPriceImplToJson(this);
  }
}

abstract class _RetailPrice implements RetailPrice {
  const factory _RetailPrice({
    final double? amount,
    final String? currencyCode,
  }) = _$RetailPriceImpl;

  factory _RetailPrice.fromJson(Map<String, dynamic> json) =
      _$RetailPriceImpl.fromJson;

  @override
  double? get amount;
  @override
  String? get currencyCode;

  /// Create a copy of RetailPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetailPriceImplCopyWith<_$RetailPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
