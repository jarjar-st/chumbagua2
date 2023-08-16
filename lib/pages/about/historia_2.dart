import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../components/breakpoints.dart';
import '../../components/breakpoints_size.dart';
import '../../constants.dart';

class AboutHistoryPage extends StatefulWidget {
  const AboutHistoryPage({super.key});

  @override
  State<AboutHistoryPage> createState() => _AboutHistoryPageState();
}

class _AboutHistoryPageState extends State<AboutHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:
          (Breakpoints(Get.width).toString() == "xs") ? 1000 : Get.height + 200,
      child: LayoutBuilder(builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: NextContainer(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: constraints.maxHeight - 120,
                    child: Stack(
                      children: [
                        Card(
                          elevation: 11,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            width: double.infinity,
                            height: constraints.maxHeight / 2,
                            child: Column(
                              mainAxisAlignment:
                                  BreakPointSize.mainAxisAlignment(
                                width: constraints.maxWidth,
                                xs: MainAxisAlignment.start,
                                sm: MainAxisAlignment.start,
                                md: MainAxisAlignment.start,
                                lg: MainAxisAlignment.start,
                                xl: MainAxisAlignment.start,
                              ),
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Nuestra Historia",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                      color: Colors.white,
                                      fontSize: 46,
                                      fontWeight: FontWeight.w800,
                                      height: 1,
                                    ),
                                  ).fadeIn(
                                      variant: NextFadeInVariant.fadeInBottom,
                                      duration:
                                          const Duration(milliseconds: 300)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: BreakPointSize.alignment(
                            width: constraints.maxWidth,
                            xs: Alignment.topCenter,
                            sm: Alignment.topCenter,
                            md: Alignment.topRight,
                            lg: Alignment.topRight,
                            xl: Alignment.centerRight,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: BreakPointSize.size(
                                  width: constraints.maxWidth,
                                  xs: 0,
                                  sm: 0,
                                  md: 30,
                                  lg: 30,
                                  xl: 30,
                                ),
                                top: BreakPointSize.size(
                                  width: constraints.maxWidth,
                                  xs: 120,
                                  sm: 120,
                                  md: 120,
                                  lg: 120,
                                  xl: 0,
                                )),
                            child: Card(
                              elevation: 11,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/historia_img.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: BreakPointSize.size(
                                  width: constraints.maxWidth,
                                  xs: Adaptive.w(80),
                                  sm: Adaptive.w(80),
                                  md: Adaptive.w(60),
                                  lg: Adaptive.w(40),
                                  xl: Adaptive.w(40),
                                ),
                                height: constraints.maxHeight * 0.40,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: BreakPointSize.alignment(
                            width: constraints.maxWidth,
                            xs: Alignment.bottomCenter,
                            sm: Alignment.center,
                            md: Alignment.bottomLeft,
                            lg: Alignment.centerLeft,
                            xl: Alignment.bottomLeft,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: BreakPointSize.size(
                                  width: constraints.maxWidth,
                                  xs: 0,
                                  sm: 0,
                                  md: 60,
                                  lg: 60,
                                  xl: 60,
                                ),
                                top: BreakPointSize.size(
                                  width: constraints.maxWidth,
                                  xs: 400,
                                  sm: 250,
                                  md: 0,
                                  lg: 0,
                                  xl: 0,
                                )),
                            child: Card(
                              elevation: 11,
                              child: Container(
                                constraints: BoxConstraints(
                                  minHeight: 35.0,
                                  maxHeight: BreakPointSize.size(
                                    width: constraints.maxWidth,
                                    xs: constraints.maxHeight * 0.58,
                                    sm: constraints.maxHeight * 0.35,
                                    md: constraints.maxHeight * 0.55,
                                    lg: constraints.maxHeight * 0.37,
                                    xl: constraints.maxHeight * 0.65,
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                width: BreakPointSize.size(
                                  width: constraints.maxWidth,
                                  xs: Adaptive.w(80),
                                  sm: Adaptive.w(80),
                                  md: Adaptive.w(40),
                                  lg: Adaptive.w(40),
                                  xl: Adaptive.w(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Compañía Azucarera Chumbagua fue fundada en el año de 1948 en la región nor-occidental del país, operando en la región nor-occidental de Honduras convirtiendo la zona de San Marcos, Santa Bárbara en un importante polo de desarrollo para el país, beneficiando directamente a todas las comunidades de sus zonas de influencia a través de programas de Responsabilidad Social Empresarial, en el año  genera más de dos mil empleados al año, inculcando a sus colaboradores los valores de excelencia, respeto, integridad, actitud de servicio y lealtad.",
                                        textAlign: TextAlign.justify,
                                        softWrap: true,
                                        style: GoogleFonts.lato(
                                          height: 1.7,
                                          fontSize: BreakPointSize.size(
                                            width: constraints.maxWidth,
                                            xs: 14,
                                            sm: 15,
                                            md: 16,
                                            lg: 16,
                                            xl: 18,
                                          ),
                                          fontWeight: FontWeight.w600,
                                          //height: 1,
                                        ),
                                      ).fadeIn(
                                          variant:
                                              NextFadeInVariant.fadeInBottom,
                                          duration:
                                              const Duration(milliseconds: 400),
                                          delay: const Duration(
                                              milliseconds: 300)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
