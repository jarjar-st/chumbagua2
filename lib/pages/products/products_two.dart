import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class ProductTwo extends StatefulWidget {
  const ProductTwo({super.key});

  @override
  State<ProductTwo> createState() => _ProductTwoState();
}

class _ProductTwoState extends State<ProductTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      color: Colors.white,
      width: double.infinity,
      child: NextContainer(
        fluid: true,
        padding: const EdgeInsets.symmetric(vertical: 0),
        children: [
          NextRow(
            verticalAlignment: WrapAlignment.center,
            horizontalAlignment: WrapAlignment.center,
            horizontalSpacing: 0,
            verticalSpacing: 0,
            children: [
              NextCol(
                sizes: "col-12 col-md-6 col-lg-6",
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: (GetPlatform.isMobile)
                        ? const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20)
                        : const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Azúcar  Morena",
                          style: TextStyle(
                            height: 0.9,
                            color: secondaryColor,
                            fontSize: (MediaQuery.of(context).size.width < 330)
                                ? 35
                                : 45,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                            wordSpacing: 5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(20),
                        const Text(
                          "Azúcar crudo extaido de la caña de azúcar a través de un proceso de molienda, purificación del jugo y cristalización., producto para exportación.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          "Polarización: 98.1 °Z mín, 99.40 °Z máx",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          "Color: 800 ICUMSA mín  2,000 ICUMSA máx.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          "Humedad: 0.20 % máx",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          "Presentaciones: 25kg, 50 kg Y 1, 250 Kg.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              NextCol(
                sizes: "col-12 col-md-6 col-lg-6",
                child: SizedBox(
                  height: Get.height / 2 - 40,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage("assets/Azucar-Morena.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
