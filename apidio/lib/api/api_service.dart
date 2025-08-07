import 'package:dio/dio.dart';
import '../models/user_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get('$baseUrl/users');
      List<User> users = (response.data as List)
          .map((user) => User.fromJson(user))
          .toList();
      return users;
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load users');
    }
  }
}
