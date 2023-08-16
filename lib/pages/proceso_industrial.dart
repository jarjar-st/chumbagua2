import 'package:cubrehn/pages/procesos/industrial.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/parallax.dart';
import 'include/footer.dart';
import 'include/header_section.dart';

class ProcesoIndustrial extends StatefulWidget {
  const ProcesoIndustrial({super.key});

  @override
  State<ProcesoIndustrial> createState() => _ProcesoIndustrialState();
}

class _ProcesoIndustrialState extends State<ProcesoIndustrial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
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
                      title: "Proceso Industrial",
                      opacity: 0.4,
                    ),
                  ),
                  const IndustrialAnimation(),
                  const FooterPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
