import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/parallax.dart';
import 'about/conceptos.dart';
import 'about/historia_2.dart';
import 'about/mision.dart';
import 'about/valores.dart';
import 'about/vision.dart';
import 'include/footer.dart';
import 'include/header_section.dart';

class AboutPape extends StatefulWidget {
  const AboutPape({super.key});

  @override
  State<AboutPape> createState() => _AboutPapeState();
}

class _AboutPapeState extends State<AboutPape> {
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
                    imageUrl: "assets/historia.jpg",
                    title: "Nuestra Identidad",
                    height: Get.height / 2,
                    opacity: 0.4,
                  ),
                ),
                const AboutHistoryPage(),
                const MisionPage(),
                const VisionPage(),
                const ValoresPage(),
                const ConceptosPage(),
                const FooterPage(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
