import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../constants.dart';

class TestimonialSection extends StatefulWidget {
  const TestimonialSection({super.key});

  @override
  State<TestimonialSection> createState() => _TestimonialSectionState();
}

class _TestimonialSectionState extends State<TestimonialSection> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    ResponsiveGridBreakpoints.value = ResponsiveGridBreakpoints(
      xs: 393,
      sm: 905,
      md: 1240,
      lg: 1440,
    );
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          child: Container(
            margin: responsiveValue(
              context,
              xs: const EdgeInsets.only(top: 20, left: 0, right: 0),
              lg: const EdgeInsets.only(top: 60, left: 70, right: 70),
              md: const EdgeInsets.only(top: 60, left: 70, right: 70),
              sm: const EdgeInsets.only(top: 60, left: 10, right: 10),
            ),
            child: Column(children: [
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    height: responsiveValue(
                      context,
                      xs: (MediaQuery.of(context).size.width > 331)
                          ? 1010
                          : 1160,
                      lg: Get.height * 0.70,
                      md: 1120,
                      sm: (MediaQuery.of(context).size.width < 442)
                          ? 1100
                          : 960,
                    ),
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // ignore: unrelated_type_equality_checks
                        color: (Theme.of(context) == Brightness.dark
                                ? secondaryColor
                                : primaryColor)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)
                            .withGreen(_current == entry.key ? 0 : 255),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

final List<String> imgList = [
  "assets/testimonial_1.jpg",
  "assets/testimonial_1.jpg"
];

class TestimoniosImgs extends StatelessWidget {
  const TestimoniosImgs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

final List<Widget> imageSliders = imgList
    .map(
      // ignore: avoid_unnecessary_containers
      (item) => Container(
        child: Card(
          elevation: 10,
          shadowColor: const Color.fromRGBO(0, 0, 0, 0),
          child: Container(
            padding: const EdgeInsets.only(top: 30),
            width: double.infinity,
            margin: const EdgeInsets.all(20.0),
            child: ResponsiveGridRow(children: [
              ResponsiveGridCol(
                lg: 0,
                md: 12,
                sm: 12,
                xl: 12,
                xs: 12,
                child: (MediaQuery.of(Get.context!).size.width < 1240)
                    // ignore: avoid_unnecessary_containers
                    ? Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            item,
                            fit: BoxFit.contain,
                            // height: (MediaQuery.of(Get.context!).size.width <
                            //             1240 &&
                            //         MediaQuery.of(Get.context!).size.width >
                            //             905)
                            //     ? 500
                            //     : null,
                          ),
                        ),
                      )
                    : Container(),
              ),
              ResponsiveGridCol(
                lg: 0,
                md: 12,
                xl: 0,
                sm: 12,
                xs: 12,
                child: Container(
                  height: 30,
                ),
              ),
              ResponsiveGridCol(
                lg: 7,
                xl: 8,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: ResponsiveGridRow(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveGridCol(
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Text(
                            "DESARROLLO DE LA MUJER EN LA #AGROINDUSTRIAAZUCARERA:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              height: 1,
                              fontFamily: Fonts.ubuntuBold,
                            ),
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        child: Container(
                          height: 20,
                        ),
                      ),
                      ResponsiveGridCol(
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Text(
                            "CARMEN DEPAZ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              height: 1,
                              fontFamily: Fonts.ubuntuBold,
                            ),
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        child: Container(
                          height: 30,
                        ),
                      ),
                      ResponsiveGridCol(
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: const Text(
                            "“Comencé a laborar en Chumbagua en el año 2011, como Asistente de estadística en el área agrícola, fue mi primera experiencia laboral, con la jornada laboral de la empresa pude realizar mis estudios y obtener mi título universitario como Lic. En Administración de Empresas Agropecuarias, de esta forma crecí dentro de la empresa y pase a ser Oficial de Activos durante 3 años, y luego como Oficial de Importaciones durante 4 años, en la actualidad soy Jefe del departamento de compras, con título de Máster en Dirección Empresarial, madre de dos hermosos hijos y esposa de un buen hombre. Esto ha sido posible gracias a Dios, y a las oportunidades que Compañía Azucarera Chumbagua me ha dado. Es una empresa que vela por la sostenibilidad del país, se preocupa por sus colaboradores brindando condiciones y oportunidades iguales, no importa el género, la religión o de donde vengamos, para Chumbagua somos su familia laboral y nos cuida”.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: Fonts.montserratRegular,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 5,
                md: 0,
                sm: 0,
                xl: 4,
                xs: 0,
                child: (MediaQuery.of(Get.context!).size.width >= 1240)
                    // ignore: avoid_unnecessary_containers
                    ? Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset(
                            item,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    : Container(),
              ),
            ]),
          ),
        ),
      ),
    )
    .toList();


// return Container(
//       width: double.infinity,
//       height: Get.height,
//       color: bgOne,
//       child: NextContainer(
//         mainAxisAlignment: MainAxisAlignment.center,
//         padding: const EdgeInsets.symmetric(vertical: 30),
//         children: [
//           Card(
//             elevation: 20,
//             child: SizedBox(
//               height: 410,
//               child: LayoutBuilder(
//                 builder: (context, constraints) {
//                   return ConstrainedBox(
//                     constraints: BoxConstraints(
//                         minWidth: constraints.maxWidth,
//                         minHeight: constraints.maxHeight),
//                     child: IntrinsicHeight(
//                       child: ImageSlideshow(
//                         indicatorRadius: 6,
//                         indicatorBackgroundColor: primaryColor,
//                         indicatorColor: secondaryColor,
//                         autoPlayInterval: 3000,
//                         isLoop: true,
//                         width: double.infinity,
//                         height: constraints.maxHeight,
//                         children: [
//                           ResponsiveGridRow(
//                             children: [
//                               ResponsiveGridCol(
//                                 xs: 12,
//                                 md: 8,
//                                 lg: 8,
//                                 xl: 8,
//                                 child: SizedBox(
//                                   height: constraints.maxHeight,
//                                   child: const Padding(
//                                     padding: const EdgeInsets.all(20.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Text(
//                                           "DESARROLLO DE LA MUJER EN LA #AGROINDUSTRIAAZUCARERA:",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: primaryColor,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w800,
//                                             height: 1,
//                                             fontFamily: Fonts.ubuntuBold,
//                                           ),
//                                         ),
//                                         Gap(20),
//                                         Text(
//                                           "CARMEN DEPAZ",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: primaryColor,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w800,
//                                             height: 1,
//                                             fontFamily: Fonts.ubuntuBold,
//                                           ),
//                                         ),
//                                         Gap(30),
//                                         Text(
//                                           "“Comencé a laborar en Chumbagua en el año 2011, como Asistente de estadística en el área agrícola, fue mi primera experiencia laboral, con la jornada laboral de la empresa pude realizar mis estudios y obtener mi título universitario como Lic. En Administración de Empresas Agropecuarias, de esta forma crecí dentro de la empresa y pase a ser Oficial de Activos durante 3 años, y luego como Oficial de Importaciones durante 4 años, en la actualidad soy Jefe del departamento de compras, con título de Máster en Dirección Empresarial, madre de dos hermosos hijos y esposa de un buen hombre. Esto ha sido posible gracias a Dios, y a las oportunidades que Compañía Azucarera Chumbagua me ha dado. Es una empresa que vela por la sostenibilidad del país, se preocupa por sus colaboradores brindando condiciones y oportunidades iguales, no importa el género, la religión o de donde vengamos, para Chumbagua somos su familia laboral y nos cuida”.",
//                                           textAlign: TextAlign.justify,
//                                           style: TextStyle(
//                                             fontFamily: Fonts.montserratRegular,
//                                             fontSize: 15,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               ResponsiveGridCol(
//                                 xs: 12,
//                                 md: 4,
//                                 lg: 4,
//                                 xl: 4,
//                                 child: SizedBox(
//                                   height: constraints.maxHeight,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(20),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Image.asset("assets/testimonial_1.jpg"),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                           ResponsiveGridRow(
//                             children: [
//                               ResponsiveGridCol(
//                                 xs: 12,
//                                 md: 8,
//                                 lg: 8,
//                                 xl: 8,
//                                 child: SizedBox(
//                                   height: constraints.maxHeight,
//                                   child: const Padding(
//                                     padding: EdgeInsets.all(20.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Text(
//                                           "DESARROLLO DE LA MUJER EN LA #AGROINDUSTRIAAZUCARERA:",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: primaryColor,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w800,
//                                             height: 1,
//                                             fontFamily: Fonts.ubuntuBold,
//                                           ),
//                                         ),
//                                         Gap(20),
//                                         Text(
//                                           "CARMEN DEPAZ",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: primaryColor,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w800,
//                                             height: 1,
//                                             fontFamily: Fonts.ubuntuBold,
//                                           ),
//                                         ),
//                                         Gap(30),
//                                         Text(
//                                           "“Comencé a laborar en Chumbagua en el año 2011, como Asistente de estadística en el área agrícola, fue mi primera experiencia laboral, con la jornada laboral de la empresa pude realizar mis estudios y obtener mi título universitario como Lic. En Administración de Empresas Agropecuarias, de esta forma crecí dentro de la empresa y pase a ser Oficial de Activos durante 3 años, y luego como Oficial de Importaciones durante 4 años, en la actualidad soy Jefe del departamento de compras, con título de Máster en Dirección Empresarial, madre de dos hermosos hijos y esposa de un buen hombre. Esto ha sido posible gracias a Dios, y a las oportunidades que Compañía Azucarera Chumbagua me ha dado. Es una empresa que vela por la sostenibilidad del país, se preocupa por sus colaboradores brindando condiciones y oportunidades iguales, no importa el género, la religión o de donde vengamos, para Chumbagua somos su familia laboral y nos cuida”.",
//                                           textAlign: TextAlign.justify,
//                                           style: TextStyle(
//                                             fontFamily: Fonts.montserratRegular,
//                                             fontSize: 15,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               ResponsiveGridCol(
//                                 xs: 12,
//                                 md: 4,
//                                 lg: 4,
//                                 xl: 4,
//                                 child: SizedBox(
//                                   height: constraints.maxHeight,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(20),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Image.asset("assets/testimonial_1.jpg"),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );