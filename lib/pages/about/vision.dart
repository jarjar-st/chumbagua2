import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../constants.dart';

class VisionPage extends StatefulWidget {
  const VisionPage({super.key});

  @override
  State<VisionPage> createState() => _VisionPageState();
}

class _VisionPageState extends State<VisionPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      crossAxisAlignment: CrossAxisAlignment.center,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResponsiveGridCol(
                  lg: 6,
                  md: 6,
                  xl: 6,
                  child: Container(
                    height: 500,
                    width: double.infinity / 2,
                    alignment: const Alignment(0, 0),
                    color: thirdColor,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Visión",
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
                          "Ser líder en productividad de azúcar y energía en Centroamérica.",
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
                        "assets/vision.jpg",
                        height: 500,
                        width: 600,
                        fit: BoxFit.cover,
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
  }
}


// SizedBox(
//       width: double.infinity,
//       height: Get.height,
//       child: LayoutBuilder(builder: (context, constraints) {
//         return ConstrainedBox(
//           constraints: BoxConstraints(
//               minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
//           child: IntrinsicHeight(
//             child: NextContainer(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Container(
//                           color: thirdColor,
//                           width: double.infinity,
//                           height: constraints.maxHeight * 0.75,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Visión",
//                                 textAlign: TextAlign.center,
//                                 style: GoogleFonts.mulish(
//                                   color: Colors.white,
//                                   fontSize: 46,
//                                   fontWeight: FontWeight.w800,
//                                   height: 1,
//                                 ),
//                               ).fadeIn(
//                                   variant: NextFadeInVariant.fadeInBottom,
//                                   duration: const Duration(milliseconds: 300)),
//                               const Gap(20),
//                               Text(
//                                 "Ser líder en productividad de azúcar y energía en Centroamérica",
//                                 textAlign: TextAlign.justify,
//                                 style: GoogleFonts.lato(
//                                   color: Colors.white,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w600,
//                                   //height: 1,
//                                 ),
//                               ).fadeIn(
//                                   variant: NextFadeInVariant.fadeInBottom,
//                                   duration: const Duration(milliseconds: 400),
//                                   delay: const Duration(milliseconds: 300)),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Expanded(
//                         child: Container(
//                           width: double.infinity,
//                           height: constraints.maxHeight * 0.75,
//                           decoration: const BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage("assets/vision.jpg"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }),
//     );