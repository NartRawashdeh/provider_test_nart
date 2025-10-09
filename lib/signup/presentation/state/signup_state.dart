import 'package:flutter/cupertino.dart';
import 'package:provider_test/feature/login/model/login_model.dart';

abstract class SignUpState {}

class OnInitialSignUpState extends SignUpState {}

class OnLoadingSignUpState extends SignUpState {}

class OnLoadedSignUpState extends SignUpState {
  LoginModel user;
  OnLoadedSignUpState({required this.user});
}

class OnErrorSignUpState extends SignUpState {
  final String errorMessage;
  OnErrorSignUpState(this.errorMessage);
}
