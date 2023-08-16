import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:parallax_animation/parallax_animation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final LoopPageController controller = LoopPageController();
  int currentIndex = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      currentIndex++;
      controller.animateToPage(
        currentIndex,
        duration: const Duration(seconds: 2),
        curve: Curves.easeIn,
      );
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height - 120,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            child: ParallaxArea(
              child: LoopPageView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                controller: controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return ParallaxWidget(
                    background: Image.asset(
                      "assets/slider_${index + 1}.jpg",
                      fit: BoxFit.cover,
                    ),
                    child: Center(
                      child: Text(
                        "PAGE ${index + 1}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Center(
              child: AnimatedSmoothIndicator(
                  effect: const WormEffect(
                      type: WormType.thin,
                      dotColor: secondaryColor,
                      activeDotColor: primaryColor),
                  activeIndex: currentIndex,
                  count: 3,
                  onDotClicked: (index) {
                    controller.animateToPage(
                      index,
                      duration: const Duration(seconds: 2),
                      curve: Curves.easeIn,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
