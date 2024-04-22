// ignore_for_file: always_put_required_named_parameters_first, public_member_api_docs

import 'package:flutter/material.dart';

/// CustomSignGradient for background
///
/// Values [ Green, White, White, Orange ]
final class CustomSignGradient extends StatelessWidget {
  const CustomSignGradient({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: GradientBody(),
          ),
        ),
        child,
      ],
    );
  }
}

final class GradientBody extends LinearGradient {
  GradientBody()
      : super(
          stops: const [0, 0.1, 0.9, 1.0],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 137, 245, 141),
            Colors.white,
            Colors.white,
            const Color.fromARGB(255, 233, 155, 38),
          ],
        );
}
