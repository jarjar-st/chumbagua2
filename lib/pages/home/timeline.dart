import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../components/parallax.dart';
import '../../constants.dart';

class TimeLineHome extends StatefulWidget {
  const TimeLineHome({super.key});

  @override
  State<TimeLineHome> createState() => _TimeLineHomeState();
}

class _TimeLineHomeState extends State<TimeLineHome> {
  @override
  Widget build(BuildContext context) {
    ResponsiveGridBreakpoints.value = ResponsiveGridBreakpoints(
      xs: 600,
      sm: 905,
      md: 1240,
      lg: 1440,
    );
    return Container(
      color: bgOne,
      width: double.infinity,
      height: Get.height - 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: (GetPlatform.isMobile ||
                      MediaQuery.of(context).size.width < 450)
                  ? Get.width
                  : (Get.width / 2) - 90,
              height: Get.height * 0.65,
              color: const Color(0xFFF6CC39),
              child: Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: double.infinity,
                    child: ParallaxBox(
                      fit: BoxFit.fitHeight,
                      height: Get.height,
                      enableRadio: false,
                      imageUrl: "assets/T1.png",
                      title: "",
                      opacity: 0,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6CC39).withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "1948",
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 32,
                                  lg: 55,
                                  md: 45,
                                  sm: 35,
                                  xl: 65,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Fue fundada en la región noroccidental del país.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 26,
                                  lg: 35,
                                  md: 35,
                                  sm: 25,
                                  xl: 45,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: (GetPlatform.isMobile ||
                      MediaQuery.of(context).size.width < 450)
                  ? Get.width
                  : (Get.width / 2) - 90,
              height: Get.height * 0.65,
              color: const Color(0xFF78A249),
              child: Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: double.infinity,
                    child: ParallaxBox(
                      fit: BoxFit.fitHeight,
                      height: Get.height,
                      enableRadio: false,
                      imageUrl: "assets/T3.png",
                      title: "",
                      opacity: 0,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF78A249).withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2014 - 2015",
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 32,
                                  lg: 55,
                                  md: 45,
                                  sm: 35,
                                  xl: 65,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "formamos parte como empresa miembro de FUNDAHRSE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 26,
                                  lg: 35,
                                  md: 35,
                                  sm: 25,
                                  xl: 45,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: (GetPlatform.isMobile ||
                      MediaQuery.of(context).size.width < 450)
                  ? Get.width
                  : (Get.width / 2) - 90,
              height: Get.height * 0.65,
              color: Color.fromRGBO(75, 108, 164, 1),
              child: Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: double.infinity,
                    child: ParallaxBox(
                      fit: BoxFit.fitHeight,
                      height: Get.height,
                      enableRadio: false,
                      imageUrl: "assets/T4.png",
                      title: "",
                      opacity: 0,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(75, 108, 164, 1).withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2018 - 2019",
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 32,
                                  lg: 55,
                                  md: 45,
                                  sm: 35,
                                  xl: 65,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Primer zafra récord de producción con la producción de 1,527,233 Quintales de caña de azúcar.​",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 26,
                                  lg: 35,
                                  md: 35,
                                  sm: 25,
                                  xl: 45,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: (GetPlatform.isMobile ||
                      MediaQuery.of(context).size.width < 450)
                  ? Get.width
                  : (Get.width / 2) - 90,
              height: Get.height * 0.65,
              color: const Color.fromRGBO(120, 162, 73, 1),
              child: Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: double.infinity,
                    child: ParallaxBox(
                      fit: BoxFit.cover,
                      height: Get.height,
                      enableRadio: false,
                      imageUrl: "assets/T5.png",
                      title: "",
                      opacity: 0,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(120, 162, 73, 1)
                          .withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2020 - 2021",
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 32,
                                  lg: 55,
                                  md: 45,
                                  sm: 35,
                                  xl: 65,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Zafra récord de molienda  736,509 Toneladas de caña de azúcar​.​",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 26,
                                  lg: 35,
                                  md: 35,
                                  sm: 25,
                                  xl: 45,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: (GetPlatform.isMobile ||
                      MediaQuery.of(context).size.width < 450)
                  ? Get.width
                  : (Get.width / 2) - 90,
              height: Get.height * 0.65,
              color: const Color(0xFF78A249),
              child: Stack(
                children: [
                  SizedBox(
                    height: Get.height,
                    width: double.infinity,
                    child: ParallaxBox(
                      fit: BoxFit.fitHeight,
                      height: 400,
                      enableRadio: false,
                      imageUrl: "assets/T6.png",
                      title: "",
                      opacity: 0,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF78A249).withOpacity(0.5),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2022",
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 32,
                                  lg: 55,
                                  md: 45,
                                  sm: 35,
                                  xl: 65,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Reconocidos por noveno décimo año como Empresa Socialmente Responsable.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: responsiveValue(
                                  context,
                                  xs: 26,
                                  lg: 35,
                                  md: 35,
                                  sm: 25,
                                  xl: 45,
                                ),
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
