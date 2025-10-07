import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider_test/feature/login/model/login_model.dart';
import '../../../core/const/api_const.dart';
import '../../../core/utils/shared_preferences_helper.dart';

class AuthProvider with ChangeNotifier {
  bool? isLoading = false;
  String? error ;
  LoginModel? response_body;

  Future<void> Login({required String phone, required String password}) async {
    isLoading = true;
    error = null;
    notifyListeners();
    try {
      final body = {"phone": phone, "password": password};
      var response = await http.post(
        Uri.parse(ApiConst.login),
        body: jsonEncode(body),
      );
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        response_body = LoginModel.fromJson(result);
        String token = response_body!.accessToken ?? "abc";
        String id = response_body!.user!.id!.toString();
        String username = response_body!.user!.username ?? "-";
        String email = response_body!.user!.email ?? "-";
        String phone = response_body!.user!.phone ?? "-";
        String role = response_body!.user!.role ?? "-";
        SharedPreferencesHelper.saveString("token", token);
        SharedPreferencesHelper.saveString("id", id);
        SharedPreferencesHelper.saveString("username", username);
        SharedPreferencesHelper.saveString("email", email);
        SharedPreferencesHelper.saveString("phone", phone);
        SharedPreferencesHelper.saveString("role", role);
        /*
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
        );
        */
      }
      print(response.statusCode);
      print(response.body);
    } catch (e) {
      print(e);
    }
  }
}