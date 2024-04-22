// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

enum CustomSignUpPadding {
  low(10),
  medium(20),
  high(30);

  final double value;
  const CustomSignUpPadding(this.value);

  EdgeInsets get padding => EdgeInsets.all(value);
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);

  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
}
