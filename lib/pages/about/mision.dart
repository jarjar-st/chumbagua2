import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../constants.dart';

class MisionPage extends StatefulWidget {
  const MisionPage({super.key});

  @override
  State<MisionPage> createState() => _MisionPageState();
}

class _MisionPageState extends State<MisionPage> {
  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isMobile) {
      return ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 1,
            md: 1,
            sm: 1,
            xl: 1,
            xs: 1,
            child: Container(),
          ),
          ResponsiveGridCol(
            lg: 10,
            md: 10,
            sm: 10,
            xl: 10,
            xs: 10,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 6,
                    md: 6,
                    xl: 6,
                    child: Container(
                      height: 500,
                      width: double.infinity / 2,
                      alignment: const Alignment(0, 0),
                      color: secondaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Misión",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mulish(
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.w800,
                              height: 1,
                            ),
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                          const Gap(20),
                          Text(
                            "Energizamos vidas y cultivamos prosperidad para nuestra gente.",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              //height: 1,
                            ),
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 400),
                              delay: const Duration(milliseconds: 300)),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 6,
                    md: 6,
                    xl: 6,
                    child: Container(
                      height: 500,
                      alignment: const Alignment(0, 0),
                      color: bgOne,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/mision_2.jpg",
                          fit: BoxFit.cover,
                          height: 500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            lg: 1,
            md: 1,
            sm: 1,
            xl: 1,
            xs: 1,
            child: Container(),
          ),
          ResponsiveGridCol(
            child: Container(
              height: 90,
            ),
          ),
        ],
      );
    } else {
      return ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 1,
            md: 1,
            sm: 1,
            xl: 1,
            xs: 1,
            child: Container(),
          ),
          ResponsiveGridCol(
            lg: 10,
            md: 10,
            sm: 10,
            xl: 10,
            xs: 10,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    lg: 6,
                    md: 6,
                    xl: 6,
                    child: Container(
                      height: 500,
                      alignment: const Alignment(0, 0),
                      color: bgOne,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/mision_2.jpg",
                          fit: BoxFit.cover,
                          height: 500,
                        ),
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 6,
                    md: 6,
                    xl: 6,
                    child: Container(
                      height: 500,
                      width: double.infinity / 2,
                      alignment: const Alignment(0, 0),
                      color: secondaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Misión",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mulish(
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.w800,
                              height: 1,
                            ),
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                          const Gap(20),
                          Text(
                            "Energizamos vidas y cultivamos prosperidad para nuestra gente.",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              //height: 1,
                            ),
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 400),
                              delay: const Duration(milliseconds: 300)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            lg: 1,
            md: 1,
            sm: 1,
            xl: 1,
            xs: 1,
            child: Container(),
          ),
          ResponsiveGridCol(
            child: Container(
              height: 90,
            ),
          ),
        ],
      );
    }
  }
}


// return ResponsiveGridRow(
//       children: [
//         ResponsiveGridCol(
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 30),
//             child: ResponsiveGridRow(
//               children: [
//                 ResponsiveGridCol(
//                   lg: 6,
//                   md: 6,
//                   xl: 6,
//                   child: Container(
//                     height: 500,
//                     width: double.infinity / 2,
//                     alignment: Alignment(0, 0),
//                     color: secondaryColor,
//                     child: Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Misión",
//                             textAlign: TextAlign.center,
//                             style: GoogleFonts.mulish(
//                               color: Colors.white,
//                               fontSize: 46,
//                               fontWeight: FontWeight.w800,
//                               height: 1,
//                             ),
//                           ).fadeIn(
//                               variant: NextFadeInVariant.fadeInBottom,
//                               duration: const Duration(milliseconds: 300)),
//                           const Gap(20),
//                           Text(
//                             "Energizamos vidas y cultivamos prosperidad para nuestra gente.",
//                             textAlign: TextAlign.justify,
//                             style: GoogleFonts.lato(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               //height: 1,
//                             ),
//                           ).fadeIn(
//                               variant: NextFadeInVariant.fadeInBottom,
//                               duration: const Duration(milliseconds: 400),
//                               delay: const Duration(milliseconds: 300)),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 ResponsiveGridCol(
//                   lg: 6,
//                   md: 6,
//                   xl: 6,
//                   child: Container(
//                     width: double.infinity / 2,
//                     alignment: Alignment(0, 0),
//                     color: bgOne,
//                     child: Image.asset(
//                       "assets/mision_2.jpg",
//                       fit: BoxFit.cover,
//                       height: 500,
//                       alignment: Alignment.center,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         ResponsiveGridCol(
//           child: Container(
//             height: 90,
//           ),
//         ),
//       ],
//     );


// return Container(
//       width: double.infinity,
//       height: Get.height,
//       color: bgOne,
//       child: LayoutBuilder(builder: (context, constraints) {
//         return ConstrainedBox(
//           constraints: BoxConstraints(
//               minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
//           child: IntrinsicHeight(
//             child: NextContainer(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 40, horizontal: 20),
//                     child: BreakPointSize.rowCol(
//                       width: constraints.maxWidth,
//                       children: [
//                         Expanded(
//                           child: Container(
//                             width: double.infinity,
//                             height: constraints.maxHeight * 0.75,
//                             decoration: const BoxDecoration(
//                               image: DecorationImage(
//                                 image: AssetImage("assets/mision_2.jpg"),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             color: secondaryColor,
//                             width: double.infinity,
//                             height: constraints.maxHeight * 0.75,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Misión",
//                                   textAlign: TextAlign.center,
//                                   style: GoogleFonts.mulish(
//                                     color: Colors.white,
//                                     fontSize: 46,
//                                     fontWeight: FontWeight.w800,
//                                     height: 1,
//                                   ),
//                                 ).fadeIn(
//                                     variant: NextFadeInVariant.fadeInBottom,
//                                     duration:
//                                         const Duration(milliseconds: 300)),
//                                 const Gap(20),
//                                 Text(
//                                   "Energizamos vidas y cultivamos prosperidad para nuestra gente.",
//                                   textAlign: TextAlign.justify,
//                                   style: GoogleFonts.lato(
//                                     color: Colors.white,
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w600,
//                                     //height: 1,
//                                   ),
//                                 ).fadeIn(
//                                     variant: NextFadeInVariant.fadeInBottom,
//                                     duration: const Duration(milliseconds: 400),
//                                     delay: const Duration(milliseconds: 300)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                       xs: "row",
//                       sm: "row",
//                       md: "row",
//                       lg: "row",
//                       xl: "row",
//                     )),
//               ],
//             ),
//           ),
//         );
//       }),
//     );