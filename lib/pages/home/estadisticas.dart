import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:unicons/unicons.dart';
// ignore: depend_on_referenced_packages
import 'package:visibility_detector/visibility_detector.dart';

import '../../constants.dart';

class EstadisticasPage extends StatefulWidget {
  const EstadisticasPage({super.key});

  @override
  State<EstadisticasPage> createState() => _EstadisticasPageState();
}

class _EstadisticasPageState extends State<EstadisticasPage> {
  final empleosCount = 0.0.obs;
  final familiasCount = 0.0.obs;
  final municipiosCount = 0.0.obs;

  @override
  void initState() {
    empleosCount.value = 0;
    familiasCount.value = 0;
    municipiosCount.value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          lg: 4,
          child: Container(
            alignment: const Alignment(0, 0),
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/empleos generados al año.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: primaryColor,
                  ),
                  width: double.infinity,
                  height: 500,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          UniconsLine.user,
                          size: 60,
                          color: Colors.white,
                        ),
                        VisibilityDetector(
                          key: const Key("0001"),
                          onVisibilityChanged: (visibilityInfo) {
                            var visiblePercentage =
                                visibilityInfo.visibleFraction * 100;
                            if (visiblePercentage > 50) {
                              empleosCount.value = 1800;
                            } else {
                              empleosCount.value = 0;
                            }
                          },
                          child: Obx(
                            () => Countup(
                              prefix: "+",
                              begin: 0,
                              end: empleosCount.value,
                              duration: const Duration(seconds: 3),
                              separator: ',',
                              style: const TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Empleos directos\ngenerados al año.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: Fonts.montserratRegular,
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            height: 1,
                          ),
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ResponsiveGridCol(
          lg: 4,
          child: Container(
            alignment: const Alignment(0, 0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/familias beneficiadas.jpg"),
                  fit: BoxFit.cover,
                ),
                color: secondaryColor,
              ),
              width: double.infinity,
              height: 500,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      UniconsLine.house_user,
                      size: 60,
                      color: Colors.white,
                    ),
                    VisibilityDetector(
                      key: const Key("0002"),
                      onVisibilityChanged: (visibilityInfo) {
                        var visiblePercentage =
                            visibilityInfo.visibleFraction * 100;
                        if (visiblePercentage > 50) {
                          familiasCount.value = 10000;
                        } else {
                          familiasCount.value = 0;
                        }
                      },
                      child: Obx(
                        () => Countup(
                          prefix: "+",
                          begin: 0,
                          end: familiasCount.value,
                          duration: const Duration(seconds: 3),
                          separator: ',',
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Familias beneficiadas.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Fonts.montserratRegular,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        height: 1,
                      ),
                    ).fadeIn(
                        variant: NextFadeInVariant.fadeInBottom,
                        duration: const Duration(milliseconds: 300)),
                  ],
                ),
              ),
            ),
          ),
        ),
        ResponsiveGridCol(
          lg: 4,
          child: Container(
            alignment: const Alignment(0, 0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/municipios.jpg"),
                  fit: BoxFit.cover,
                ),
                color: secondaryColor,
              ),
              width: double.infinity,
              height: 500,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      UniconsLine.building,
                      size: 60,
                      color: Colors.white,
                    ),
                    VisibilityDetector(
                      key: const Key("0003"),
                      onVisibilityChanged: (visibilityInfo) {
                        var visiblePercentage =
                            visibilityInfo.visibleFraction * 100;
                        if (visiblePercentage > 50) {
                          municipiosCount.value = 7;
                        } else {
                          municipiosCount.value = 0;
                        }
                      },
                      child: Obx(
                        () => Countup(
                          prefix: "+",
                          begin: 0,
                          end: municipiosCount.value,
                          duration: const Duration(seconds: 3),
                          separator: ',',
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Municipios de influencia.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Fonts.montserratRegular,
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        height: 1,
                      ),
                    ).fadeIn(
                        variant: NextFadeInVariant.fadeInBottom,
                        duration: const Duration(milliseconds: 300)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// return SizedBox(
//       width: double.infinity,
//       height: 500,
//       child: Stack(
//         children: [
//           NextRow(
//             children: [
//               NextCol(
//                 sizes: 'col-4 col-md-4 col-sm-12',
//                 child: Container(
//                   height: 500,
//                   color: primaryColor,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         UniconsLine.user,
//                         size: 60,
//                         color: Colors.white,
//                       ),
//                       VisibilityDetector(
//                         key: const Key("0001"),
//                         onVisibilityChanged: (visibilityInfo) {
//                           var visiblePercentage =
//                               visibilityInfo.visibleFraction * 100;
//                           if (visiblePercentage > 50) {
//                             empleosCount.value = 1800;
//                           } else {
//                             empleosCount.value = 0;
//                           }
//                         },
//                         child: Obx(
//                           () => Countup(
//                             prefix: "+",
//                             begin: 0,
//                             end: empleosCount.value,
//                             duration: const Duration(seconds: 3),
//                             separator: ',',
//                             style: const TextStyle(
//                               fontSize: 50,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "Empleos directos generados al año.",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontFamily: Fonts.montserratRegular,
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w800,
//                           height: 1,
//                         ),
//                       ).fadeIn(
//                           variant: NextFadeInVariant.fadeInBottom,
//                           duration: const Duration(milliseconds: 300)),
//                     ],
//                   ),
//                 ),
//               ),
//               NextCol(
//                 sizes: 'col-4 col-md-4 col-sm-12',
//                 child: Container(
//                   height: 500,
//                   color: thirdColor,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         UniconsLine.house_user,
//                         size: 60,
//                         color: Colors.white,
//                       ),
//                       VisibilityDetector(
//                         key: const Key("0002"),
//                         onVisibilityChanged: (visibilityInfo) {
//                           var visiblePercentage =
//                               visibilityInfo.visibleFraction * 100;
//                           if (visiblePercentage > 50) {
//                             familiasCount.value = 10000;
//                           } else {
//                             familiasCount.value = 0;
//                           }
//                         },
//                         child: Obx(
//                           () => Countup(
//                             prefix: "+",
//                             begin: 0,
//                             end: familiasCount.value,
//                             duration: const Duration(seconds: 3),
//                             separator: ',',
//                             style: const TextStyle(
//                               fontSize: 50,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "Familias beneficiadas.",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontFamily: Fonts.montserratRegular,
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w800,
//                           height: 1,
//                         ),
//                       ).fadeIn(
//                           variant: NextFadeInVariant.fadeInBottom,
//                           duration: const Duration(milliseconds: 300)),
//                     ],
//                   ),
//                 ),
//               ),
//               NextCol(
//                 sizes: 'col-4 col-md-4 col-sm-12',
//                 child: Container(
//                   height: 500,
//                   color: secondaryColor,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         UniconsLine.building,
//                         size: 60,
//                         color: Colors.white,
//                       ),
//                       VisibilityDetector(
//                         key: const Key("0003"),
//                         onVisibilityChanged: (visibilityInfo) {
//                           var visiblePercentage =
//                               visibilityInfo.visibleFraction * 100;
//                           if (visiblePercentage > 50) {
//                             municipiosCount.value = 7;
//                           } else {
//                             municipiosCount.value = 0;
//                           }
//                         },
//                         child: Obx(
//                           () => Countup(
//                             prefix: "+",
//                             begin: 0,
//                             end: municipiosCount.value,
//                             duration: const Duration(seconds: 3),
//                             separator: ',',
//                             style: const TextStyle(
//                               fontSize: 50,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "Municipios de influencia.",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontFamily: Fonts.montserratRegular,
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w800,
//                           height: 1,
//                         ),
//                       ).fadeIn(
//                           variant: NextFadeInVariant.fadeInBottom,
//                           duration: const Duration(milliseconds: 300)),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );