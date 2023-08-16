import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class ProductOne extends StatefulWidget {
  const ProductOne({super.key});

  @override
  State<ProductOne> createState() => _ProductOneState();
}

class _ProductOneState extends State<ProductOne> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 768) {
      return Container(
        margin: const EdgeInsets.only(top: 40),
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
                            "Azúcar  Blanca",
                            style: TextStyle(
                              height: 0.9,
                              color: secondaryColor,
                              fontSize:
                                  (MediaQuery.of(context).size.width < 330)
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
                            "Azúcar blanco extraído de la caña de azúcar a través de un proceso de molienda, purificación del jugo y cristalización y fortificación con vitamina A",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Polarización: 99.5 °",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Color: Icumsa GS1/3-7 (2011) 250 min. 800 Mazx.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Humedad: 0.15% máx",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Presentaciones: 50 Kg y 1250 Kg.",
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
                      image: AssetImage("assets/Azucar-Blanca.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
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
                    height: Get.height / 2 - 40,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage("assets/Azucar-Blanca.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
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
                            "Azúcar  Blanca",
                            style: TextStyle(
                              height: 0.9,
                              color: secondaryColor,
                              fontSize:
                                  (MediaQuery.of(context).size.width < 330)
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
                            "Azúcar blanco extraído de la caña de azúcar a través de un proceso de molienda, purificación del jugo y cristalización y fortificación con vitamina A",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Polarización: 99.5 °",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Color: Icumsa GS1/3-7 (2011) 250 min. 800 Mazx.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          const Text(
                            "Humedad: 0.15% máx",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Presentaciones: 50 Kg y 1250 Kg.",
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
              ],
            ),
          ],
        ),
      );
    }
  }
}
