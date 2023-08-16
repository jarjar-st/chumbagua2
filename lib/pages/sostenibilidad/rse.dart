import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as sizer;
// ignore: depend_on_referenced_packages
import 'package:visibility_detector/visibility_detector.dart';

import '../../components/parallax.dart';
import '../../constants.dart';

class RsePage extends StatefulWidget {
  const RsePage({super.key});

  @override
  State<RsePage> createState() => _RsePageState();
}

class _RsePageState extends State<RsePage> {
  final educationValue = 0.0.obs;
  final saludValue = 0.0.obs;
  final colaboradoresValue = 0.0.obs;
  final arteValue = 0.0.obs;

  @override
  void initState() {
    educationValue.value = 0;
    saludValue.value = 0;
    colaboradoresValue.value = 0;
    arteValue.value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 905) {
      return Container(
        width: double.infinity,
        color: bgOne,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              width: Device.screenType == sizer.ScreenType.mobile
                  ? Adaptive.w(100)
                  : Adaptive.w(80),
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
                                "Responsabilidad Social Empresarial",
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
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Educación",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Mejoras de infraestructura en centros educativos.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Construcción de módulos para educación.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Convenios institucionales para salario de maestros.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de kits escolares y bioseguridad.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donativo de mobiliario escolar.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de materiales y equipos para climatización.",
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/educacion_1.jpg",
                                title: "",
                                fit: BoxFit.fitHeight,
                                height: 800,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/educacion.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0001"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          educationValue.value = 6500;
                                        } else {
                                          educationValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: educationValue.value,
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
                                    Text(
                                      "Estudiantes beneficiados en alianza con Funazucar.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 12,
                        lg: 12,
                        xl: 12,
                        child: Container(
                          color: Colors.transparent,
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Salud",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Mejoras de infraestructura en centros de salud.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Fumigación en comunidades por bioseguridad y dengue.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Instalación de clínica para atenciones en ginecología y pediatría.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de suministro para equipo médico.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/salud_1.jpg",
                                title: "",
                                fit: BoxFit.fitHeight,
                                height: 800,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/salud.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0002"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          saludValue.value = 22399;
                                        } else {
                                          saludValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: saludValue.value,
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
                                    Text(
                                      "Personas beneficiadas en alianza con FUNAZÚCAR.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 12,
                        lg: 12,
                        xl: 12,
                        child: Container(
                          color: Colors.transparent,
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Colaboradores",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Programa de becas.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Capacitación para desarrollo de competencias.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Jornadas de vacunación de enfermedades virales y atención médica.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Celebración de días especiales que contribuyen al buen clima laboral. ",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Programa de voluntariado corporativo.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de materiales y equipos para climatización.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/colaboradores_1.jpg",
                                title: "",
                                fit: BoxFit.cover,
                                height: 550,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/colaboradores.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0003"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          colaboradoresValue.value = 3000;
                                        } else {
                                          colaboradoresValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: colaboradoresValue.value,
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
                                    Text(
                                      "Empleos directos e indirectos generados.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 12,
                        lg: 12,
                        xl: 12,
                        child: Container(
                          color: Colors.transparent,
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Arte / Cultura / Deporte",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Celebración de festival de la caña en alianza con\nInstituto Amelia Noriega.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Celebración del día del niño en comunidades y escuelas.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Patrocinio a equipos de fútbol de las comunidades.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de azúcar a centros de arte cultural.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/salud_1.jpg",
                                title: "",
                                fit: BoxFit.cover,
                                height: 800,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/arte.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0004"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          arteValue.value = 3500;
                                        } else {
                                          arteValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: arteValue.value,
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
                                    Text(
                                      "Familias beneficiadas.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        color: bgOne,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              width: Device.screenType == sizer.ScreenType.mobile
                  ? Adaptive.w(100)
                  : Adaptive.w(80),
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
                                "Responsabilidad Social Empresarial",
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/educacion_1.jpg",
                                title: "",
                                fit: BoxFit.fitHeight,
                                height: 800,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/educacion.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0001"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          educationValue.value = 6500;
                                        } else {
                                          educationValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: educationValue.value,
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
                                    Text(
                                      "Estudiantes beneficiados en alianza con Funazucar.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Educación",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Mejoras de infraestructura en centros educativos.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Construcción de módulos para educación.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Convenios institucionales para salario de maestros.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de kits escolares y bioseguridad.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donativo de mobiliario escolar.",
                                textAlign: TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de materiales y equipos para climatización.",
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
                      ResponsiveGridCol(
                        xs: 12,
                        md: 12,
                        lg: 12,
                        xl: 12,
                        child: Container(
                          color: Colors.transparent,
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Salud",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Mejoras de infraestructura en centros de salud.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Fumigación en comunidades por bioseguridad y dengue.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Instalación de clínica para atenciones en ginecología y pediatría.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de suministro para equipo médico.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/salud_1.jpg",
                                title: "",
                                fit: BoxFit.fitHeight,
                                height: 800,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/salud.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0002"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          saludValue.value = 22399;
                                        } else {
                                          saludValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: saludValue.value,
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
                                    Text(
                                      "Personas beneficiadas en alianza con FUNAZÚCAR.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 12,
                        lg: 12,
                        xl: 12,
                        child: Container(
                          color: Colors.transparent,
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/colaboradores_1.jpg",
                                title: "",
                                fit: BoxFit.cover,
                                height: 550,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/colaboradores.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0003"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          colaboradoresValue.value = 3000;
                                        } else {
                                          colaboradoresValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: colaboradoresValue.value,
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
                                    Text(
                                      "Empleos directos e indirectos generados.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Colaboradores",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Programa de becas.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Capacitación para desarrollo de competencias.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Jornadas de vacunación de enfermedades virales y atención médica.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Celebración de días especiales que contribuyen al buen clima laboral. ",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Programa de voluntariado corporativo.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de materiales y equipos para climatización.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
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
                      ResponsiveGridCol(
                        xs: 12,
                        md: 12,
                        lg: 12,
                        xl: 12,
                        child: Container(
                          color: Colors.transparent,
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        md: 6,
                        lg: 6,
                        xl: 6,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                          height: 500,
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Arte / Cultura / Deporte",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "Actividades desarrolladas como:",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Gap(20),
                              Text(
                                "- Celebración de festival de la caña en alianza con\nInstituto Amelia Noriega.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Celebración del día del niño en comunidades y escuelas.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Patrocinio a equipos de fútbol de las comunidades.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
                                softWrap: true,
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 60, 60, 60),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "- Donación de azúcar a centros de arte cultural.",
                                textAlign: (GetPlatform.isMobile)
                                    ? TextAlign.center
                                    : TextAlign.justify,
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
                      ResponsiveGridCol(
                        xl: 6,
                        lg: 6,
                        md: 6,
                        sm: 12,
                        child: SizedBox(
                          height: 500,
                          child: Stack(
                            children: [
                              ParallaxBox(
                                imageUrl: "assets/salud_1.jpg",
                                title: "",
                                fit: BoxFit.cover,
                                height: 800,
                                enableRadio: false,
                                opacity: 0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                width: double.infinity,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/arte.svg",
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.srcIn,
                                      ),
                                      width: 120,
                                    ),
                                    VisibilityDetector(
                                      key: const Key("0004"),
                                      onVisibilityChanged: (visibilityInfo) {
                                        var visiblePercentage =
                                            visibilityInfo.visibleFraction *
                                                100;
                                        if (visiblePercentage > 50) {
                                          arteValue.value = 3500;
                                        } else {
                                          arteValue.value = 0;
                                        }
                                      },
                                      child: Obx(
                                        () => Countup(
                                          prefix: "+",
                                          begin: 0,
                                          end: arteValue.value,
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
                                    Text(
                                      "Familias beneficiadas.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        height: 1,
                                      ),
                                    ).fadeIn(
                                        variant: NextFadeInVariant.fadeInBottom,
                                        duration:
                                            const Duration(milliseconds: 300)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
