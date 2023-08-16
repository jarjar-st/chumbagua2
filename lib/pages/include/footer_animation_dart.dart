import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class CamionAnimation extends StatefulWidget {
  const CamionAnimation({super.key});

  @override
  State<CamionAnimation> createState() => _CamionAnimationState();
}

class _CamionAnimationState extends State<CamionAnimation> {
  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isMobile || MediaQuery.of(context).size.width < 900) {
      return Container(
        height: 120,
      );
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 120,
        child: const RiveAnimation.asset(
          "assets/camion.riv",
          fit: BoxFit.contain,
        ),
      );
    }
  }
}
