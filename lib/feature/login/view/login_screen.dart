//import 'dart:convert';
//import 'package:api_test/screens/login_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/feature/login/controller/auth_provider.dart';
// import '../core/const/api_const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /*
  TextEditingController usernameField = TextEditingController();
  TextEditingController emailField = TextEditingController();
  */
  TextEditingController phoneField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  // Future<void> Login({required String phone, required String password}) async {
  //   try {
  //     final body = {"phone": phone, "password": password};
  //
  //     var response = await http.post(
  //       Uri.parse(ApiConst.login),
  //       body: jsonEncode(body),
  //     );
  //     print(response.statusCode);
  //     print(response.body);
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  //
  // Future<void> register({
  //   required String username,
  //   required String email,
  //   required String phone,
  //   required String password,
  // }) async {
  //   try {
  //     final body = {
  //       "username": username,
  //       "email": email,
  //       "phone": phone,
  //       "password": password,
  //     };
  //     var response = await http.post(
  //       Uri.parse(ApiConst.register),
  //       body: jsonEncode(body),
  //     );
  //     print(response.statusCode);
  //     print(response.body);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 72.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: usernameField,
                    decoration: InputDecoration(label: Text("Username")),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: emailField,
                    decoration: InputDecoration(label: Text("Email")),
                  ),
                ),
              ],
            ),
            */
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: phoneField,
                    decoration: InputDecoration(label: Text("phone")),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: passwordField,
                    decoration: InputDecoration(label: Text("password")),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Text(
                    style: TextStyle(
                      height: 4,
                      backgroundColor: Colors.blueAccent,
                    ),
                    "Login",
                  ),
                  onTap: () {
                    // if (usernameField.text.isNotEmpty &&
                    //     emailField.text.isNotEmpty &&
                    //     phoneField.text.isNotEmpty &&
                    //     passwordField.text.isNotEmpty) {
                    //   register(
                    //     username: usernameField.text,
                    //     email: emailField.text,
                    //     phone: phoneField.text,
                    //     password: passwordField.text,
                    //   );
                    // }
                    context.read<AuthProvider>().Login(
                      phone: phoneField.text,
                      password: passwordField.text,
                    );
                  },
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  child: Text(
                    style: TextStyle(height: 4, color: Colors.blueAccent),
                    "Or go to login screen",
                  ),
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => LoginScreen2()),
                    // );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
