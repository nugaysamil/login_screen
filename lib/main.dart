// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomSignUpView(),
    );
  }
}
