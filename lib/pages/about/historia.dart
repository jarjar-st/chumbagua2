import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoriaPage extends StatefulWidget {
  const HistoriaPage({super.key});

  @override
  State<HistoriaPage> createState() => _HistoriaPageState();
}

class _HistoriaPageState extends State<HistoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/historia_img.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: Get.height,
          child: NextContainer(
            mainAxisAlignment: MainAxisAlignment.center,
            padding: const EdgeInsets.symmetric(vertical: 30),
            children: [
              Card(
                elevation: 0,
                color: Colors.black.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: NextRow(
                    children: [
                      NextCol(
                        sizes: 'col-8 col-md-8 col-sm-12',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
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
                                duration: const Duration(milliseconds: 300)),
                            const Gap(20),
                            Text(
                              "Compañía Azucarera Chumbagua fue fundada en el año de 1948 en la región nor-occidental del país. Convirtiéndose esta zona en un importante polo de desarrollo para la región y el año 2020 formó parte de Grupo Cadelga.",
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
                            const Gap(20),
                            Text(
                              "Operando en la región noroccidental de Honduras y convierte la zona de San Marcos, Santa Bárbara en un importante polo de desarrollo para el país. Beneficiando directamente a todas las comunidades de sus zonas de influencia a través de programas de Responsabilidad Social Empresarial, genera mas de dos mil empleos al año, inculcando a sus colaboradores con valores de excelencia, respeto, integridad, actitud de servicio y lealtad.",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
