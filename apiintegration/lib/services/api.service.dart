import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.model.dart';

class ApiService {
  static const String url = "https://jsonplaceholder.typicode.com/users";

  static Future<List<UserModel>> fetchUsers() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List jsonData = json.decode(response.body);
      return jsonData.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }
}
