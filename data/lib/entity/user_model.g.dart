// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      age: json['age'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String,
      hobbies:
          (json['hobbies'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'country': instance.country,
      'email': instance.email,
      'hobbies': instance.hobbies,
    };
