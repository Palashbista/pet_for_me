import 'package:json_annotation/json_annotation.dart';

part 'jsondata.g.dart';


@JsonSerializable()
class JsonData{

  JsonData({this.id,
    this.imageUrl,
    this.name,
    this.gender,
    this.location,
    this.about,
    this.contact});

  final int id;
  final String imageUrl;
  final String name;
  final String gender;
  final String location;
  final String about;
  final String contact;

  factory JsonData.fromJson(Map<String, dynamic> json) =>
      _$JsonDataFromJson(json);
  Map<String, dynamic> toJson() => _$JsonDataToJson(this);

}






