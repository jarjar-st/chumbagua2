import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:responsive_sizer/responsive_sizer.dart' as sizer;

class IndustrialAnimation extends StatefulWidget {
  const IndustrialAnimation({super.key});

  @override
  State<IndustrialAnimation> createState() => _IndustrialAnimationState();
}

class _IndustrialAnimationState extends State<IndustrialAnimation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            width: Device.screenType == sizer.ScreenType.mobile
                ? Adaptive.w(100)
                : Adaptive.w(80), // This will take 20% of the screen's width
            child: Column(
              children: [
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      md: 12,
                      lg: 12,
                      xl: 12,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Column(
                          children: [
                            Lottie.asset('assets/lottie/proceso_agricola.json')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
