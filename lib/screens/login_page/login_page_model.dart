// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial3/model/login_model.dart';
import 'package:tutorial3/screens/dashboard_page/dashboard_page_widget.dart';
import 'package:http/http.dart' as http;

class LoginPageModel with ChangeNotifier {
  TextEditingController? usernameController;
  TextEditingController? passwordController;
  bool loginFormValid = true;
  String firstName = "";

  login(BuildContext context) {
    String username = usernameController!.value.text;
    String password = passwordController!.value.text;

    if (username.isEmpty || password.isEmpty) {
      loginFormValid = false;
    } else {
      loginFormValid = true;
    }
    // TODO notify widget to show error if invalid form

    if (loginFormValid) {
      Future<LoginResponse> response = performLoginPost(username, password);
      response.then((value) {
        if (kDebugMode) {
          firstName = value.firstName;
        }
        // TODO navigate to dashboard page
      }).catchError((error) {
        if (kDebugMode) {
          print(error);
        }
        loginFormValid = false;
      // TODO notify widget to show error if invalid form
      });
    }
  }

  Future<LoginResponse> performLoginPost(
      String username, String password) async {
    // TODO write HTTTP POST request to https://dummyjson.com/auth/login
  }
}
