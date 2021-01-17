import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sanctum_auth/helpers/ApiHelper.dart';
import 'package:sanctum_auth/providers/BaseProvider.dart';

class AuthProvider extends BaseProvider {
  API api = API();
  FlutterSecureStorage _storage = FlutterSecureStorage();

  bool get isLoggedIn => true;

  Future login(String email, String password) async {
    setState(Status.IDLE);

    try {
      setState(Status.LOADING);

      final token = await api.post(
          '/login',
          jsonEncode({
            'email': email,
            'password': password,
            'device_name': 'User Device'
          }));
      if (token != null) {
        setState(Status.SUCCESS);
        setToken(token);
        return true;
      }
      return false;
    } catch (e) {
      message = e.message;
      errors = e.errors;
      print(e.errors);
      setState(Status.ERROR);
    }
  }

  Future<bool> logout() async {
    await removeToken();
    notifyListeners();
    return true;
  }

  Future setToken(String token) async {
    await _storage.write(key: 'access_token', value: token);
  }

  Future removeToken() async {
    if (await _storage.containsKey(key: 'access_token')) {
      await _storage.delete(key: 'access_token');
    }
  }
}
