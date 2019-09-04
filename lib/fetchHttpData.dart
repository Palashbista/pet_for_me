
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:pet_for_me/utility.dart';
import 'package:pet_for_me/jsondata.dart';

Future<List<JsonData>> fetchPost() async {
  final response = await http.get('http://localhost:8080');
  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    print(dataToDecode(response.body).runtimeType.toString());
    return dataToDecode(response.body);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}

//void main() => runApp(JsonTest(post: fetchPost()));



//String rawJson = '{"name":"Mary","age":30}';
//Map<String, dynamic> map = jsonDecode(rawJson);
//JsonData petInfo = JsonData.fromJson(map);
//void test(){
//   print(petInfo.name);
//}

//Future<Post> fetchPost() async {
//  final response =
//  await http.get('https://jsonplaceholder.typicode.com/posts/1');
//
//  if (response.statusCode == 200) {
//    // If server returns an OK response, parse the JSON.
//    return Post.fromJson(json.decode(response.body));
//  } else {
//    // If that response was not OK, throw an error.
//    throw Exception('Failed to load post');
//  }
//}
