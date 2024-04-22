import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_keys.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_padding.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomSignUpPadding.medium.paddingVertical,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: CustomSignUpKeys.alreadyHaveAccount,
            children: [
              TextSpan(
                text: CustomSignUpKeys.signIn,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.green,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
