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
      (json['price'] as num).toDouble(),
      (json['portion'] as num).toDouble(),
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
      'count': instance.count,
    };