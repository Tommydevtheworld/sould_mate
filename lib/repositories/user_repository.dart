import 'dart:async';

import 'package:dio/dio.dart';
import 'package:sould_mate/models/user.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    var dio = Dio();
    final response = await dio.get('https://randomuser.me/api/');
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = User(const Uuid().v4()),
    );
  }
}
