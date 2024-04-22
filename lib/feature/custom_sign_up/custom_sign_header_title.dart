import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_keys.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_padding.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            CustomSignUpKeys.headerTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: CustomSignUpPadding.low.value),
            child: Text(
              CustomSignUpKeys.headerSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
