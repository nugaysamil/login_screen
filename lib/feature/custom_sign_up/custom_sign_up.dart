// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_header_title.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_keys.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_mixin.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_padding.dart';
import 'package:login_screen/feature/widget/custom_sign_already.dart';
import 'package:login_screen/feature/widget/custom_sign_button.dart';
import 'package:login_screen/feature/widget/custom_sign_check_box.dart';
import 'package:login_screen/feature/widget/custom_sign_controller.dart';
import 'package:login_screen/feature/widget/custom_sign_gradient.dart';

class CustomSignUpView extends StatefulWidget {
  const CustomSignUpView({super.key});

  @override
  State<CustomSignUpView> createState() => _CustomSignUpViewState();
}

class _CustomSignUpViewState extends State<CustomSignUpView>
    with CustomSignUpMixin {
  @override
  Widget build(BuildContext context) {
    return CustomSignGradient(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: CustomSignUpPadding.medium.paddingHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderTitle(),
                SignUpTextField(
                  controller: nameController,
                  title: CustomSignUpKeys.nameControllerTitle,
                  keyboardType: TextInputType.name,
                ),
                SignUpTextField(
                  controller: emailController,
                  title: CustomSignUpKeys.emailControllerTitle,
                  keyboardType: TextInputType.emailAddress,
                ),
                SignUpTextField(
                  controller: passwordController,
                  title: CustomSignUpKeys.passwordControllerTitle,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const CustomSignCheckBox(),
                const CustomSignButton(),
                const AlreadyHaveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
