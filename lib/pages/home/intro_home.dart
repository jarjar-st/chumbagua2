import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';

import 'package:responsive_grid/responsive_grid.dart';

import '../../constants.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({super.key});

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            padding:
                const EdgeInsets.only(right: 40, left: 40, top: 60, bottom: 5),
            alignment: const Alignment(0, 0),
            color: bgOne,
            child: const Text(
              "Azucarera Chumbagua",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: primaryColor,
                fontSize: 46,
                fontWeight: FontWeight.w800,
                height: 1,
                fontFamily: Fonts.ubuntuBold,
              ),
            ).fadeIn(
                variant: NextFadeInVariant.fadeInBottom,
                duration: const Duration(milliseconds: 300)),
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            color: bgOne,
            alignment: const Alignment(0, 0),
            height: 30,
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            padding: (MediaQuery.of(context).size.width < 768)
                ? const EdgeInsets.symmetric(horizontal: 40)
                : const EdgeInsets.symmetric(horizontal: 80),
            color: bgOne,
            child: const Text(
              "Somos una empresa agroindustrial del sector privado,  dedicada al  procesamiento de caña para producir azúcar. Nos ubicamos la región noroccidental de Honduras.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: Fonts.bebasRegular,
                fontSize: 20,
              ),
            ).fadeIn(
                variant: NextFadeInVariant.fadeInBottom,
                duration: const Duration(milliseconds: 400),
                delay: const Duration(milliseconds: 300)),
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            color: bgOne,
            alignment: const Alignment(0, 0),
            height: 20,
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            padding: (MediaQuery.of(context).size.width < 768)
                ? const EdgeInsets.symmetric(horizontal: 40)
                : const EdgeInsets.symmetric(horizontal: 80),
            alignment: const Alignment(0, 0),
            color: bgOne,
            child: const Text(
              "A través de nuestro programa de Responsabilidad Social Empresarial, nos enfocamos en beneficiar a todas las comunidades que se encuentran en nuestra zona de operación e influencia. (Aquí podemos poner el mapita donde se ubica el ingenio y los municipios de operación).",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: Fonts.bebasRegular,
                fontSize: 20,
              ),
            ).fadeIn(
                variant: NextFadeInVariant.fadeInBottom,
                duration: const Duration(milliseconds: 400),
                delay: const Duration(milliseconds: 300)),
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            color: bgOne,
            alignment: const Alignment(0, 0),
            height: 20,
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          md: 12,
          sm: 12,
          xl: 12,
          xs: 12,
          child: Container(
            padding: (MediaQuery.of(context).size.width < 768)
                ? const EdgeInsets.symmetric(horizontal: 40)
                : const EdgeInsets.symmetric(horizontal: 80),
            alignment: const Alignment(0, 0),
            color: bgOne,
            child: const Text(
              "Cada año generamos más de dos mil empleos, y para nosotros es muy importante inculcar valores éticos y comportamientos responsables a nuestros colaboradores, con el objetivo de contribuir al desarrollo sostenible de la región.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: Fonts.bebasRegular,
                fontSize: 20,
              ),
            ).fadeIn(
                variant: NextFadeInVariant.fadeInBottom,
                duration: const Duration(milliseconds: 400),
                delay: const Duration(milliseconds: 300)),
          ),
        ),
      ],
    );
  }
}


// Container(
//       width: double.infinity,
//       height: Get.height,
//       color: bgOne,
//       child: NextContainer(
//         mainAxisAlignment: MainAxisAlignment.center,
//         padding: const EdgeInsets.symmetric(vertical: 30),
//         children: [
//           NextRow(
//             children: [
//               NextCol(
//                 sizes: 'col-8 col-md-8 col-sm-12',
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const Text(
//                       "Azucarera Chumbagua",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: primaryColor,
//                         fontSize: 46,
//                         fontWeight: FontWeight.w800,
//                         height: 1,
//                         fontFamily: Fonts.ubuntuBold,
//                       ),
//                     ).fadeIn(
//                         variant: NextFadeInVariant.fadeInBottom,
//                         duration: const Duration(milliseconds: 300)),
//                     const Gap(30),
//                     const Text(
//                       "Somos una empresa agroindustrial del sector privado,  dedicada al  procesamiento de caña para producir azúcar. Nos ubicamos la región noroccidental de Honduras.",
//                       textAlign: TextAlign.justify,
//                       style: TextStyle(
//                         fontFamily: Fonts.bebasRegular,
//                         fontSize: 20,
//                       ),
//                     ).fadeIn(
//                         variant: NextFadeInVariant.fadeInBottom,
//                         duration: const Duration(milliseconds: 400),
//                         delay: const Duration(milliseconds: 300)),
//                     const Gap(20),
//                     const Text(
//                       "A través de nuestro programa de Responsabilidad Social Empresarial, nos enfocamos en beneficiar a todas las comunidades que se encuentran en nuestra zona de operación e influencia. (Aquí podemos poner el mapita donde se ubica el ingenio y los municipios de operación).",
//                       textAlign: TextAlign.justify,
//                       style: TextStyle(
//                         fontFamily: Fonts.bebasRegular,
//                         fontSize: 20,
//                       ),
//                     ).fadeIn(
//                         variant: NextFadeInVariant.fadeInBottom,
//                         duration: const Duration(milliseconds: 400),
//                         delay: const Duration(milliseconds: 300)),
//                     const Gap(20),
//                     const Text(
//                       "Cada año generamos más de dos mil empleos, y para nosotros es muy importante inculcar valores éticos y comportamientos responsables a nuestros colaboradores, con el objetivo de contribuir al desarrollo sostenible de la región.",
//                       textAlign: TextAlign.justify,
//                       style: TextStyle(
//                         fontFamily: Fonts.bebasRegular,
//                         fontSize: 20,
//                       ),
//                     ).fadeIn(
//                         variant: NextFadeInVariant.fadeInBottom,
//                         duration: const Duration(milliseconds: 400),
//                         delay: const Duration(milliseconds: 300)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );