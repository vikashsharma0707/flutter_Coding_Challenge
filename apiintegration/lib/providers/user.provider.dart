import 'package:flutter/material.dart';
import '../models/user.model.dart';
import '../services/api.service.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> _users = [];
  bool _isLoading = false;

  List<UserModel> get users => _users;
  bool get isLoading => _isLoading;

  Future<void> loadUsers() async {
    _isLoading = true;
    notifyListeners();

    _users = await ApiService.fetchUsers();

    _isLoading = false;
    notifyListeners();
  }
}
