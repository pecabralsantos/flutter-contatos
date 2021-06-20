// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDTO _$ContactDTOFromJson(Map<String, dynamic> json) {
  return ContactDTO(
    json['id'] as String,
    json['photo'] as String,
    json['name'] as String,
    json['phone'] as String,
    json['email'] as String,
    json['birthday'] as String,
    json['about'] as String,
  );
}

Map<String, dynamic> _$ContactDTOToJson(ContactDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'birthday': instance.birthday,
      'about': instance.about,
    };
