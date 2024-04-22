// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_keys.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_padding.dart';

class CustomSignCheckBox extends StatelessWidget {
  const CustomSignCheckBox();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: CustomSignUpPadding.low.value,
      ),
      child: Row(
        children: [
          Checkbox(
            value: true,
            activeColor: Colors.green,
            onChanged: (value) {},
          ),
          Text(
            CustomSignUpKeys.checkBoxTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
