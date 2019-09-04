// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jsondata.dart';


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonData _$JsonDataFromJson(Map<String, dynamic> json) {
  return JsonData(
    id: json['id'] as int,
    imageUrl: json['imageUrl'] as String,
    name: json['name'] as String,
    gender: json['gender'] as String,
    location: json['location'] as String,
    about: json['about'] as String,
    contact: json['contact'] as String,
  );

}

Map<String, dynamic> _$JsonDataToJson(JsonData instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'gender': instance.gender,
      'location': instance.location,
      'about': instance.about,
      'contact': instance.contact,
    };


