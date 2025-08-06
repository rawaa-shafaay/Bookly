// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  author: json['author'] as String,
  imageUrl: json['imageUrl'] as String,
  rating: (json['rating'] as num).toDouble(),
  ratingCount: (json['ratingCount'] as num).toInt(),
  description: json['description'] as String?,
  previewLink: json['previewLink'] as String?,
  priceText: json['priceText'] as String?,
  isForSale: json['isForSale'] as bool?,
  category: json['category'] as String?,
);

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'description': instance.description,
      'previewLink': instance.previewLink,
      'priceText': instance.priceText,
      'isForSale': instance.isForSale,
      'category': instance.category,
    };
