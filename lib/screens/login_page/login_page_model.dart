import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tutorial3/model/login_model.dart';

part 'login_page_model.g.dart';

class LoginPageState {
  const LoginPageState({
    this.loginFormValid = true,
    this.firstName = '',
    this.isLoading = false,
  });

  final bool loginFormValid;
  final String firstName;
  final bool isLoading;
}

// TODO add annotation for riverpod
class LoginPageModel extends _$LoginPageModel {
  @override
  LoginPageState build() => const LoginPageState();

  Future<bool> login(String username, String password) async {
    if (username.isEmpty || password.isEmpty) {
      // TODO notify widget to show error if invalid form
    }

    state = const LoginPageState(isLoading: true);
    try {
      final response = await performLoginPost(username, password);
      state = LoginPageState(firstName: response.firstName);
      return true;
    } catch (_) {
      // TODO notify widget to show error if invalid form
    }
  }

  Future<LoginResponse> performLoginPost(
    String username,
    String password,
  ) async {
    // TODO write HTTTP POST request to https://dummyjson.com/auth/login
  }
}
