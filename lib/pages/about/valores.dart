import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../../constants.dart';

class ValoresPage extends StatefulWidget {
  const ValoresPage({super.key});

  @override
  State<ValoresPage> createState() => _ValoresPageState();
}

class _ValoresPageState extends State<ValoresPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: double.infinity,
      color: bgOne,
      child: ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridCol(
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    child: Text(
                      "Valores",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mulish(
                        color: primaryColor,
                        fontSize: 46,
                        fontWeight: FontWeight.w800,
                        height: 1,
                      ),
                    ).fadeIn(
                      variant: NextFadeInVariant.fadeInBottom,
                      duration: const Duration(milliseconds: 300),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    child: Text(
                      "RIGEN NUESTRO ACTUAR",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ).fadeIn(
                      variant: NextFadeInVariant.fadeInBottom,
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 300),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 4,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    height: 280,
                    width: 300,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 750, minWidth: 700),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage:
                                    AssetImage("assets/icon_integridad.jpg"),
                              ),
                              const Gap(10),
                              Text(
                                "Integridad",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: primaryColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                  height: 1,
                                ),
                              ).fadeIn(
                                  variant: NextFadeInVariant.fadeInBottom,
                                  duration: const Duration(milliseconds: 300)),
                              const Gap(20),
                              Text(
                                "Es el valor que ayuda a la persona a actuar con congruencia, respecto a la palabra dada.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,

                                  //height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).fadeIn(
                          variant: NextFadeInVariant.fadeInBottom,
                          duration: const Duration(milliseconds: 400),
                          delay: const Duration(milliseconds: 300)),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 4,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    height: 280,
                    width: 300,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 750, minWidth: 700),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage: AssetImage(
                                    "assets/icon_actitud_de_servicio.jpg"),
                              ),
                              const Gap(10),
                              Text(
                                "Actitud de servicio",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: primaryColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                  height: 1,
                                ),
                              ).fadeIn(
                                  variant: NextFadeInVariant.fadeInBottom,
                                  duration: const Duration(milliseconds: 300)),
                              const Gap(20),
                              Text(
                                "Es la convicción legítima de servir al prójimo, comunidad y país.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  //height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).fadeIn(
                          variant: NextFadeInVariant.fadeInBottom,
                          duration: const Duration(milliseconds: 400),
                          delay: const Duration(milliseconds: 300)),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 4,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    height: 280,
                    width: 300,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 750, minWidth: 700),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage:
                                    AssetImage("assets/icon_lealtad.jpg"),
                              ),
                              const Gap(10),
                              Text(
                                "Lealtad",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: primaryColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                  height: 1,
                                ),
                              ).fadeIn(
                                  variant: NextFadeInVariant.fadeInBottom,
                                  duration: const Duration(milliseconds: 300)),
                              const Gap(20),
                              Text(
                                "Es una actitud de profundo compromiso para salvaguardar los intereses y bienes de La Compañía.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  //height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).fadeIn(
                          variant: NextFadeInVariant.fadeInBottom,
                          duration: const Duration(milliseconds: 400),
                          delay: const Duration(milliseconds: 300)),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 2,
                  md: 0,
                  sm: 0,
                  xl: 0,
                  xs: 0,
                  child: Container(
                    height: 100,
                  ),
                ),
                ResponsiveGridCol(
                  lg: 4,
                  md: 12,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    height: 280,
                    width: 300,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 700, minWidth: 700),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage:
                                    AssetImage("assets/icon_excelencia.jpg"),
                              ),
                              const Gap(10),
                              Text(
                                "Excelencia",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: primaryColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                  height: 1,
                                ),
                              ).fadeIn(
                                  variant: NextFadeInVariant.fadeInBottom,
                                  duration: const Duration(milliseconds: 300)),
                              const Gap(20),
                              Text(
                                "Conjunto de prácticas sobresalientes en la gestión de una organización orientada al logro de objetivos concretos y tangibles.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  //height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).fadeIn(
                          variant: NextFadeInVariant.fadeInBottom,
                          duration: const Duration(milliseconds: 400),
                          delay: const Duration(milliseconds: 300)),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 4,
                  md: 12,
                  child: Container(
                    alignment: const Alignment(0, 0),
                    height: 280,
                    width: 300,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints(maxWidth: 700, minWidth: 700),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const CircleAvatar(
                                radius: 40.0,
                                backgroundImage:
                                    AssetImage("assets/icon_respeto.jpg"),
                              ),
                              const Gap(10),
                              Text(
                                "Respeto",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: primaryColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w800,
                                ),
                              ).fadeIn(
                                  variant: NextFadeInVariant.fadeInBottom,
                                  duration: const Duration(milliseconds: 300)),
                              const Gap(20),
                              Text(
                                "Reconocer, apreciar y valorar a mi persona, así como a los demás.",
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  //height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).fadeIn(
                          variant: NextFadeInVariant.fadeInBottom,
                          duration: const Duration(milliseconds: 400),
                          delay: const Duration(milliseconds: 300)),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 2,
                  md: 0,
                  child: Container(
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // child: NextContainer(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   padding: const EdgeInsets.symmetric(vertical: 30),
      //   children: [
      //     NextRow(responsive_grid
      //       children: [
      //         NextCol(
      //           margin: const EdgeInsets.only(bottom: 30),
      //           sizes: 'col-12 col-md-12 col-sm-12',
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Text(
      //                 "Valores",
      //                 textAlign: TextAlign.center,
      //                 style: GoogleFonts.mulish(
      //                   color: primaryColor,
      //                   fontSize: 46,
      //                   fontWeight: FontWeight.w800,
      //                   height: 1,
      //                 ),
      //               ).fadeIn(
      //                   variant: NextFadeInVariant.fadeInBottom,
      //                   duration: const Duration(milliseconds: 300)),
      //               const Gap(20),
      //               Text(
      //                 "RIGEN NUESTRO ACTUAR",
      //                 textAlign: TextAlign.center,
      //                 style: GoogleFonts.lato(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.w300,
      //                   //height: 1,
      //                 ),
      //               ).fadeIn(
      //                   variant: NextFadeInVariant.fadeInBottom,
      //                   delay: const Duration(milliseconds: 600),
      //                   duration: const Duration(milliseconds: 300)),
      //             ],
      //           ),
      //         ),
      //         NextCol(
      //           sizes: 'col-4 col-md-4 col-sm-12',
      //           child: SizedBox(
      //             height: 250,
      //             child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20.0),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: <Widget>[
      //                     const CircleAvatar(
      //                       radius: 40.0,
      //                       backgroundImage:
      //                           AssetImage("assets/icon_integridad.jpg"),
      //                     ),
      //                     const Gap(10),
      //                     Text(
      //                       "Integridad",
      //                       textAlign: TextAlign.center,
      //                       style: GoogleFonts.mulish(
      //                         color: primaryColor,
      //                         fontSize: 23,
      //                         fontWeight: FontWeight.w800,
      //                         height: 1,
      //                       ),
      //                     ).fadeIn(
      //                         variant: NextFadeInVariant.fadeInBottom,
      //                         duration: const Duration(milliseconds: 300)),
      //                     const Gap(20),
      //                     Text(
      //                       "Es el valor que ayuda a la persona a actuar con congruencia, respecto a la palabra dada.",
      //                       textAlign: TextAlign.justify,
      //                       style: GoogleFonts.lato(
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.w600,
      //                         //height: 1,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ).fadeIn(
      //                 variant: NextFadeInVariant.fadeInBottom,
      //                 duration: const Duration(milliseconds: 400),
      //                 delay: const Duration(milliseconds: 300)),
      //           ),
      //         ),
      //         NextCol(
      //           sizes: 'col-4 col-md-4 col-sm-12',
      //           child: SizedBox(
      //             height: 250,
      //             child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20.0),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: <Widget>[
      //                     const CircleAvatar(
      //                       radius: 40.0,
      //                       backgroundImage: AssetImage(
      //                           "assets/icon_actitud_de_servicio.jpg"),
      //                     ),
      //                     const Gap(10),
      //                     Text(
      //                       "Actitud de servicio",
      //                       textAlign: TextAlign.center,
      //                       style: GoogleFonts.mulish(
      //                         color: primaryColor,
      //                         fontSize: 23,
      //                         fontWeight: FontWeight.w800,
      //                         height: 1,
      //                       ),
      //                     ).fadeIn(
      //                         variant: NextFadeInVariant.fadeInBottom,
      //                         duration: const Duration(milliseconds: 300)),
      //                     const Gap(20),
      //                     Text(
      //                       "Es la convicción legítima de servir al prójimo, comunidad y país.",
      //                       textAlign: TextAlign.justify,
      //                       style: GoogleFonts.lato(
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.w600,
      //                         //height: 1,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ).fadeIn(
      //                 variant: NextFadeInVariant.fadeInBottom,
      //                 duration: const Duration(milliseconds: 400),
      //                 delay: const Duration(milliseconds: 300)),
      //           ),
      //         ),
      //         NextCol(
      //           sizes: 'col-4 col-md-4 col-sm-12',
      //           child: SizedBox(
      //             height: 250,
      //             child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20.0),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: <Widget>[
      //                     const CircleAvatar(
      //                       radius: 40.0,
      //                       backgroundImage:
      //                           AssetImage("assets/icon_lealtad.jpg"),
      //                     ),
      //                     const Gap(10),
      //                     Text(
      //                       "Lealtad",
      //                       textAlign: TextAlign.center,
      //                       style: GoogleFonts.mulish(
      //                         color: primaryColor,
      //                         fontSize: 23,
      //                         fontWeight: FontWeight.w800,
      //                         height: 1,
      //                       ),
      //                     ).fadeIn(
      //                         variant: NextFadeInVariant.fadeInBottom,
      //                         duration: const Duration(milliseconds: 300)),
      //                     const Gap(20),
      //                     Text(
      //                       "Es una actitud de profundo compromiso para salvaguardar los intereses y bienes de La Compañía.",
      //                       textAlign: TextAlign.justify,
      //                       style: GoogleFonts.lato(
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.w600,
      //                         //height: 1,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ).fadeIn(
      //                 variant: NextFadeInVariant.fadeInBottom,
      //                 duration: const Duration(milliseconds: 400),
      //                 delay: const Duration(milliseconds: 300)),
      //           ),
      //         ),
      //         NextCol(
      //           sizes: 'col-6 col-md-6 col-sm-12',
      //           child: SizedBox(
      //             height: 250,
      //             child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20.0),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: <Widget>[
      //                     const CircleAvatar(
      //                       radius: 40.0,
      //                       backgroundImage:
      //                           AssetImage("assets/icon_excelencia.jpg"),
      //                     ),
      //                     const Gap(10),
      //                     Text(
      //                       "Excelencia",
      //                       textAlign: TextAlign.center,
      //                       style: GoogleFonts.mulish(
      //                         color: primaryColor,
      //                         fontSize: 23,
      //                         fontWeight: FontWeight.w800,
      //                         height: 1,
      //                       ),
      //                     ).fadeIn(
      //                         variant: NextFadeInVariant.fadeInBottom,
      //                         duration: const Duration(milliseconds: 300)),
      //                     const Gap(20),
      //                     Text(
      //                       "Conjunto de prácticas sobresalientes en la gestión de una organización orientada al logro de objetivos concretos y tangibles.",
      //                       textAlign: TextAlign.justify,
      //                       style: GoogleFonts.lato(
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.w600,
      //                         //height: 1,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ).fadeIn(
      //                 variant: NextFadeInVariant.fadeInBottom,
      //                 duration: const Duration(milliseconds: 400),
      //                 delay: const Duration(milliseconds: 300)),
      //           ),
      //         ),
      //         NextCol(
      //           sizes: 'col-6 col-md-6 col-sm-12',
      //           child: SizedBox(
      //             height: 250,
      //             child: Card(
      //               semanticContainer: true,
      //               clipBehavior: Clip.antiAliasWithSaveLayer,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20.0),
      //                 child: Column(
      //                   mainAxisSize: MainAxisSize.min,
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: <Widget>[
      //                     const CircleAvatar(
      //                       radius: 40.0,
      //                       backgroundImage:
      //                           AssetImage("assets/icon_respeto.jpg"),
      //                     ),
      //                     const Gap(10),
      //                     Text(
      //                       "Respeto",
      //                       textAlign: TextAlign.center,
      //                       style: GoogleFonts.mulish(
      //                         color: primaryColor,
      //                         fontSize: 23,
      //                         fontWeight: FontWeight.w800,
      //                         height: 1,
      //                       ),
      //                     ).fadeIn(
      //                         variant: NextFadeInVariant.fadeInBottom,
      //                         duration: const Duration(milliseconds: 300)),
      //                     const Gap(20),
      //                     Text(
      //                       "Reconocer, apreciar y valorar a mi persona, así como a los demás.",
      //                       textAlign: TextAlign.justify,
      //                       style: GoogleFonts.lato(
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.w600,
      //                         //height: 1,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ).fadeIn(
      //                 variant: NextFadeInVariant.fadeInBottom,
      //                 duration: const Duration(milliseconds: 400),
      //                 delay: const Duration(milliseconds: 300)),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
