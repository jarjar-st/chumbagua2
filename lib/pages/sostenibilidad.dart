import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/parallax.dart';
import 'include/footer.dart';
import 'include/header_section.dart';
import 'sostenibilidad/politica.dart';
import 'sostenibilidad/rse.dart';

class Sostenibilidad extends StatefulWidget {
  const Sostenibilidad({super.key});

  @override
  State<Sostenibilidad> createState() => _SostenibilidadState();
}

class _SostenibilidadState extends State<Sostenibilidad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderSection(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: Get.height / 2,
                  width: double.infinity,
                  child: ParallaxBox(
                    imageUrl: "assets/sostenibilidad.jpg",
                    height: Get.height / 2,
                    title: "Sostenibilidad",
                    opacity: 0.4,
                  ),
                ),
                const PoliticasPage(),
                const RsePage(),
                const FooterPage(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
