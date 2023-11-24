// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      json['id'] as int,
      json['categoryId'] as int,
      json['name'] as String,
      json['description'] as String,
      json['price'] as int,
      json['portion'] as int,
      json['imgUrl'] as String,
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'portion': instance.portion,
      'imgUrl': instance.imgUrl,
      'count': instance.count,
    };
