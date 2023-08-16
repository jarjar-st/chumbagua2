import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as sizer;

import '../../constants.dart';

class PoliticasPage extends StatefulWidget {
  const PoliticasPage({super.key});

  @override
  State<PoliticasPage> createState() => _PoliticasPageState();
}

class _PoliticasPageState extends State<PoliticasPage> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 905) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
                            Text(
                              "Politicas",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.mulish(
                                color: primaryColor,
                                fontSize: 46,
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
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de gestión de ambiente",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Con el objetivo de ser una empresa sostenible, en Compañía Azucarera Chumbagua nos comprometemos a:",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                "- Cumplir con los requisitos legales, regulatorios y otros suscritos voluntariamente para la protección del medio ambiente.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Promover procesos que prevengan, mitiguen y compensen los impactos de nuestro entorno.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Contribuir al desarrollo y transformación de las capacidades de nuestros colaboradores y comunidades fomentando una cultura de responsabilidad social. ",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40, top: 10),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica6.png",
                              height: 150,
                              color: primaryColor,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de gestión",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Cumplir con los requisitos legales y regulatorios aplicables a la calidad e inocuidad de los productos y procesos relacionados con la caña de azúcar.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Transformar nuestras capacidades a través de la innovación y mejora continua. ",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Valorar e integrar a nuestros colaboradores, accionistas, comunidades y proveedores basado en una relación responsable y mutuo beneficio. ",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40, top: 10),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica2.png",
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: thirdColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de salud y seguridad",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "En Compañía Azucarera Chumbagua, la salud y seguridad de nuestros colaboradores, contratistas, visitantes, proveedores y comunidades es nuestra prioridad, por lo tanto, estamos comprometidos a:",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                "- Cumplir con los requisitos legales, regulatorios y procedimientos internos.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Usar correctamente los dispositivos y equipos de seguridad asignados.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Usar los canales de comunicación definidos para informar sobre cualquier anomalía que ponga en riesgo la salud y seguridad de las personas.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Cumpliendo con lo anterior, aseguramos el bienestar de las personas que ingresan a nuestras instalaciones.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40, top: 10),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica3.png",
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de RSE",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "En Compañía Azucarera Chumbagua operamos bajo los principios fundamentales de la responsabilidad social empresarial. Nos comprometemos a mejorar la calidad de vida de nuestros grupos de interés identificados en nuestras zonas de influencia. Impulsamos el cumplimiento de los objetivos de desarrollo sostenible contribuyendo voluntariamente con acciones enfocadas a la educación, la salud, el medio ambiente y el desarrollo comunitario. Establecemos alianzas estratégicas: como parte de la gestión participativa y compromiso integral en pro del desarrollo de nuestras comunidades y del éxito de nuestra propia organización.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40, top: 10),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica4.png",
                              color: primaryColor,
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de Derechos Humanos ​",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Compañía Azucarera Chumbagua S.A de C.V manifiesta su compromiso en defensa de los derechos humanos y de respetar de manera inequívoca las declaraciones, convenios y pactos internacionales referentes a derechos civiles y políticos,"
                                "derechos económicos,​ sociales y culturales, principios voluntarios sobre seguridad y los convenios y declaraciones respecto a los pueblos indígenas y tribales,"
                                "que protegen de manera​ integral los derechos humanos de las personas establecidos en la Declaración Universal de los Derechos Humanos, con el fin de lograr un ambiente laboral seguro y saludable para los colaboradores, así como un entorno que respete los derechos humanos de todas las partes involucradas en todas las áreas de operación de la compañía.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40, top: 10),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica1.png",
                              height: 150,
                              color: secondaryColor,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: thirdColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de Igualdad laboral y no discriminación",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Compañía Azucarera Chumbagua S.A de C.V manifiesta su compromiso en defensa de los derechos humanos respetando las diferencias individuales de las personas desde el reclutamiento, los procesos de contratación, promoción profesional y desarrollo humano; garantizando la igualdad de oportunidades para todo el personal, quedando prohibido cualquier forma de exclusión o restricción basado en su origen étnico, cultura, religión, género, preferencias sexuales, condiciones de salud, edad, estado civil o conyugal, nacionalidad, discapacidad o cualquier otra que tenga por efecto impedir o anular el reconocimiento y la igualdad real de oportunidades.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40, top: 10),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica5.png",
                              color: thirdColor,
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
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
                            Text(
                              "Politicas",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.mulish(
                                color: primaryColor,
                                fontSize: 46,
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
                ResponsiveGridRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de gestión de ambiente",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Con el objetivo de ser una empresa sostenible, en Compañía Azucarera Chumbagua nos comprometemos a:",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                "- Cumplir con los requisitos legales, regulatorios y otros suscritos voluntariamente para la protección del medio ambiente.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Promover procesos que prevengan, mitiguen y compensen los impactos de nuestro entorno.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Contribuir al desarrollo y transformación de las capacidades de nuestros colaboradores y comunidades fomentando una cultura de responsabilidad social. ",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica6.png",
                              height: 150,
                              color: primaryColor,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica2.png",
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de gestión",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Cumplir con los requisitos legales y regulatorios aplicables a la calidad e inocuidad de los productos y procesos relacionados con la caña de azúcar.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Transformar nuestras capacidades a través de la innovación y mejora continua. ",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Valorar e integrar a nuestros colaboradores, accionistas, comunidades y proveedores basado en una relación responsable y mutuo beneficio. ",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: thirdColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de salud y seguridad",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "En Compañía Azucarera Chumbagua, la salud y seguridad de nuestros colaboradores, contratistas, visitantes, proveedores y comunidades es nuestra prioridad, por lo tanto, estamos comprometidos a:",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                "- Cumplir con los requisitos legales, regulatorios y procedimientos internos.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Usar correctamente los dispositivos y equipos de seguridad asignados.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Usar los canales de comunicación definidos para informar sobre cualquier anomalía que ponga en riesgo la salud y seguridad de las personas.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Cumpliendo con lo anterior, aseguramos el bienestar de las personas que ingresan a nuestras instalaciones.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica3.png",
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica4.png",
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de RSE",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "En Compañía Azucarera Chumbagua operamos bajo los principios fundamentales de la responsabilidad social empresarial. Nos comprometemos a mejorar la calidad de vida de nuestros grupos de interés identificados en nuestras zonas de influencia. Impulsamos el cumplimiento de los objetivos de desarrollo sostenible contribuyendo voluntariamente con acciones enfocadas a la educación, la salud, el medio ambiente y el desarrollo comunitario. Establecemos alianzas estratégicas: como parte de la gestión participativa y compromiso integral en pro del desarrollo de nuestras comunidades y del éxito de nuestra propia organización.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: secondaryColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de Derechos Humanos ​",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Compañía Azucarera Chumbagua S.A de C.V manifiesta su compromiso en defensa de los derechos humanos y de respetar de manera inequívoca las declaraciones, convenios y pactos internacionales referentes a derechos civiles y políticos,"
                                "derechos económicos,​ sociales y culturales, principios voluntarios sobre seguridad y los convenios y declaraciones respecto a los pueblos indígenas y tribales,"
                                "que protegen de manera​ integral los derechos humanos de las personas establecidos en la Declaración Universal de los Derechos Humanos, con el fin de lograr un ambiente laboral seguro y saludable para los colaboradores, así como un entorno que respete los derechos humanos de todas las partes involucradas en todas las áreas de operación de la compañía.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/Politica1.png",
                              color: secondaryColor,
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                ResponsiveGridRow(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ResponsiveGridCol(
                      xs: 12,
                      md: 3,
                      lg: 3,
                      xl: 3,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        padding: const EdgeInsets.all(5),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              color: thirdColor,
                              "assets/Politica5.png",
                              height: 150,
                            ),
                          ],
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                      ),
                    ),
                    ResponsiveGridCol(
                      xl: 9,
                      lg: 9,
                      md: 9,
                      sm: 12,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: thirdColor,
                          ),
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Política de Igualdad laboral y no discriminación",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Compañía Azucarera Chumbagua S.A de C.V manifiesta su compromiso en defensa de los derechos humanos respetando las diferencias individuales de las personas desde el reclutamiento, los procesos de contratación, promoción profesional y desarrollo humano; garantizando la igualdad de oportunidades para todo el personal, quedando prohibido cualquier forma de exclusión o restricción basado en su origen étnico, cultura, religión, género, preferencias sexuales, condiciones de salud, edad, estado civil o conyugal, nacionalidad, discapacidad o cualquier otra que tenga por efecto impedir o anular el reconocimiento y la igualdad real de oportunidades.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ).fadeIn(
                              variant: NextFadeInVariant.fadeInBottom,
                              duration: const Duration(milliseconds: 300)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
//           xs: 12,
//           md: 12,
//           lg: 12,
//           xl: 12,
//           child: Container(
//             color: Colors.amber,
//             child: Text(
//               "Politicas",
//               textAlign: TextAlign.center,
//               style: GoogleFonts.mulish(
//                 color: primaryColor,
//                 fontSize: 46,
//                 fontWeight: FontWeight.w800,
//                 height: 1,
//               ),
//             ).fadeIn(
//                 variant: NextFadeInVariant.fadeInBottom,
//                 duration: const Duration(milliseconds: 300)),
//           ),
//         ),
//         ResponsiveGridCol(
//           xl: 9,
//           lg: 9,
//           md: 9,
//           sm: 12,
//           child: Card(
//             elevation: 20,
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: primaryColor,
//               ),
//               padding: const EdgeInsets.all(20),
//               width: double.infinity,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Política de gestión de ambiente",
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.mulish(
//                       color: Colors.white,
//                       fontSize: 26,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const Gap(20),
//                   Text(
//                     "Con el objetivo de ser una empresa sostenible, en Compañía Azucarera Chumbagua nos comprometemos a:",
//                     textAlign: TextAlign.justify,
//                     softWrap: true,
//                     style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                   const Gap(10),
//                   Text(
//                     "- Cumplir con los requisitos legales, regulatorios y otros suscritos voluntariamente para la protección del medio ambiente.",
//                     textAlign: TextAlign.justify,
//                     softWrap: true,
//                     style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                   Text(
//                     "- Promover procesos que prevengan, mitiguen y compensen los impactos de nuestro entorno.",
//                     textAlign: TextAlign.justify,
//                     softWrap: true,
//                     style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                   Text(
//                     "- Contribuir al desarrollo y transformación de las capacidades de nuestros colaboradores y comunidades fomentando una cultura de responsabilidad social. ",
//                     textAlign: TextAlign.justify,
//                     softWrap: true,
//                     style: GoogleFonts.lato(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                 ],
//               ).fadeIn(
//                   variant: NextFadeInVariant.fadeInBottom,
//                   duration: const Duration(milliseconds: 300)),
//             ),
//           ),
//         ),
//         ResponsiveGridCol(
//           xs: 12,
//           md: 3,
//           lg: 3,
//           xl: 3,
//           child: Container(
//             margin: const EdgeInsets.only(bottom: 40),
//             padding: const EdgeInsets.all(5),
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "assets/politica.jpg",
//                   height: 150,
//                 ),
//               ],
//             ).fadeIn(
//                 variant: NextFadeInVariant.fadeInBottom,
//                 duration: const Duration(milliseconds: 300)),
//           ),
//         ),
//       ],
//     );

