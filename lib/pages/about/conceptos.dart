import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class ConceptosPage extends StatefulWidget {
  const ConceptosPage({super.key});

  @override
  State<ConceptosPage> createState() => _ConceptosPageState();
}

class _ConceptosPageState extends State<ConceptosPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: double.infinity,
      child: NextContainer(
        mainAxisAlignment: MainAxisAlignment.center,
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: [
          NextRow(
            children: [
              NextCol(
                margin: const EdgeInsets.only(bottom: 30),
                sizes: 'col-12 col-md-12 col-sm-12',
                child: Column(
                  children: [
                    Text(
                      "Conceptos",
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
                    const Gap(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "De la caña se extrae entre los principales productos: azúcar, melaza y bagazo que es transformado en energía renovable.",
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          //height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              NextCol(
                margin: const EdgeInsets.only(bottom: 30),
                sizes: 'col-4 col-md-4 col-sm-12',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 900,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                              minWidth: constraints.maxWidth,
                              minHeight: constraints.maxHeight),
                          child: IntrinsicHeight(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: constraints.maxHeight * 0.40,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/zafra.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: primaryColor,
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ZAFRA",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            //height: 1,
                                          ),
                                        ),
                                        const Gap(20),
                                        Text(
                                          "Cuando hablamos de zafra nos referimos a que la caña de azúcar esta lista para poder cosecharse iniciando así el proceso de transformación en azúcar. El corte de caña puede ser convencional, es decir manual, o mecanizado; las condiciones del terreno son determinantes para poder definir que tipo de corte es factible. La época de zafra se realiza durante la estación seca, que en nuestra región dura de diciembre a mayo.",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            //height: 1,
                                          ),
                                        ),
                                        const Gap(20),
                                        Text(
                                          "Este período da vida a la actividad económica en los municipios aledaños, ya que representa uno de los principales sustentos para miles de familias.",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            //height: 1,
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
                    )
                  ],
                ).fadeIn(
                    variant: NextFadeInVariant.fadeInBottom,
                    duration: const Duration(milliseconds: 300)),
              ),
              NextCol(
                margin: const EdgeInsets.only(bottom: 30),
                sizes: 'col-4 col-md-4 col-sm-12',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 900,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                              minWidth: constraints.maxWidth,
                              minHeight: constraints.maxHeight),
                          child: IntrinsicHeight(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: constraints.maxHeight * 0.40,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/inter_zafra.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: secondaryColor,
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "INTER ZAFRA",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            //height: 1,
                                          ),
                                        ),
                                        const Gap(20),
                                        Text(
                                          "Período en el cual la maquinaria y equipo agrícola e industrial se somete a mantenimiento correctivo para poder operar en óptimas condiciones durante la próxima zafra.",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            //height: 1,
                                          ),
                                        ),
                                        const Gap(20),
                                        Text(
                                          "En nuestros campos la inter zafra inicia desde que se cosecha la caña, dándole al cultivo el manejo agronómico que necesita para poder desarrollarse en su mayor potencial productivo y concentrar azúcar.",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            //height: 1,
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
                    )
                  ],
                ).fadeIn(
                    variant: NextFadeInVariant.fadeInBottom,
                    duration: const Duration(milliseconds: 300)),
              ),
              NextCol(
                margin: const EdgeInsets.only(bottom: 30),
                sizes: 'col-4 col-md-4 col-sm-12',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 900,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                              minWidth: constraints.maxWidth,
                              minHeight: constraints.maxHeight),
                          child: IntrinsicHeight(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: constraints.maxHeight * 0.40,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/EnergiaRenovable.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: thirdColor,
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ENERGIA RENOVABLE",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            //height: 1,
                                          ),
                                        ),
                                        const Gap(10),
                                        Text(
                                          "Las energías renovables provienen de fuentes que se renuevan constantemente, como la biomasa. La biomasa utilizada en nuestro proceso de generación de energía es un residuo que se genera en la primera etapa de extracción de azúcar, en el proceso de molienda, donde se separa el jugo del bagazo, el primero sigue su ruta hacía la producción de azúcar y el bagazo es aprovechado para generar la energía que se utiliza en nuestras operaciones. Además, sumamos a la matriz energética del país despachando los excedentes al Sistema Interconectado Nacional (SIN).",
                                          textAlign: TextAlign.justify,
                                          softWrap: true,
                                          style: GoogleFonts.lato(
                                            color: const Color.fromARGB(
                                                255, 60, 60, 60),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            //height: 1,
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
                    )
                  ],
                ).fadeIn(
                    variant: NextFadeInVariant.fadeInBottom,
                    duration: const Duration(milliseconds: 300)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
