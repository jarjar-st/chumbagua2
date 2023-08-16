import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/parallax.dart';
import 'include/footer.dart';
import 'include/header_section.dart';
import 'procesos/agricola.dart';

class ProcesoAgricola extends StatefulWidget {
  const ProcesoAgricola({super.key});

  @override
  State<ProcesoAgricola> createState() => _ProcesoAgricolaState();
}

class _ProcesoAgricolaState extends State<ProcesoAgricola> {
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
                    title: "Proceso Agrícola",
                    opacity: 0.4,
                  ),
                ),
                const AgricolaAnimation(),
                const FooterPage(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
