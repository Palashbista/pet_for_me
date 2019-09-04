import 'dart:convert';
import 'jsondata.dart';


List<JsonData> dataToDecode(String response){
  List<JsonData> list = [];
  List responseList = json.decode(response);
  for(Map item in responseList){
    list.add(JsonData.fromJson(item));
  }

  return list;
}