import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sanctum_auth/helpers/ApiHelper.dart';
import 'package:sanctum_auth/providers/BaseProvider.dart';
import 'package:sanctum_auth/models/User.dart';

class AuthProvider extends BaseProvider {
  API api = API();
  FlutterSecureStorage _storage = FlutterSecureStorage();

  bool get isLoggedIn => true;

  User user;

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
        await setToken(token);
        return true;
      }
      return false;
    } catch (e) {
      message = e.message;
      errors = e.errors;
      print(e.errors);
      setState(Status.ERROR);
      return false;
    }
  }

  Future register(
    String name, 
    String email, 
    String password, 
    String address,
    String licenseNo,
    String citizenshipNo,
    DateTime dob,
    String phoneNo,
    String modelNo, 
    String licensePlate,
    DateTime lastService,

    ) async {
        setState(Status.IDLE);

    try {
      setState(Status.LOADING);

      final token = await api.post(
          '/driver/register',
          jsonEncode({
            'name': name,
            'email': email,
            'password': password,
            'address': address,
            'license_no': licenseNo,
            'citizenship_no':citizenshipNo,
            'dob': dob,
            'model_no':modelNo,
            'license_plate_no':licensePlate,
            'phone':phoneNo,
            'last_servicing_date':lastService,
          }));
     setState(Status.IDLE);
      return true;
    } catch (e) {
      message = e.message;
      errors = e.errors;
      print(e.errors);
      setState(Status.ERROR);
      return false;
    }
  }

   Future<void> getCurrentUser() async {
    try {
      final userJson = await api.get('/user');
      if(userJson != null) {
        user = User.fromJson(userJson);
        print(user);
      }
    } catch (e) {
      print(e);
    }
  }


  Future<bool> logout() async {
    try {
      await api.post('/logout', {});
      await removeToken();
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
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
