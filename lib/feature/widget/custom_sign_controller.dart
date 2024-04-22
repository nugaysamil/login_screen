// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:login_screen/feature/custom_sign_up/custom_sign_up_padding.dart';
import 'package:login_screen/feature/widget/custom_sign_size_items.dart';

final class SignUpTextField extends StatelessWidget {
  const SignUpTextField({
    required String title,
    required TextEditingController controller,
    super.key,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  })  : _title = title,
        _obscureText = obscureText,
        _keyboardType = keyboardType,
        _controller = controller;
  final String _title;
  final TextEditingController _controller;
  final bool _obscureText;
  final TextInputType _keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: CustomSignUpPadding.low.value),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_title),
          Padding(
            padding: EdgeInsets.only(top: CustomSignUpPadding.low.value),
            child: TextField(
              keyboardType: _keyboardType,
              obscureText: _obscureText,
              controller: _controller,
              decoration: InputDecoration(
                fillColor:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: CustomSignSizeItems.lowRadius,
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
