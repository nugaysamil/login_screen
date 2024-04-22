// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up.dart';

mixin CustomSignUpMixin on State<CustomSignUpView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
