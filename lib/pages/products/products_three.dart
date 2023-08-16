import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class ProductThree extends StatefulWidget {
  const ProductThree({super.key});

  @override
  State<ProductThree> createState() => _ProductThreeState();
}

class _ProductThreeState extends State<ProductThree> {
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
                            "Melaza",
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
                            "Sub producto extraído de la caña de azúcar a través de un proceso de molienda, purificación del jugo, cristalización, centrifugación. Se utiliza como materia prima en destilerías, fertilizantes, alimentos balanceados para animales y levadura.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Producido en Chumbagua, San Marcos, Santa Bárbara.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Brix hidrométrico: 85° mín, 87° máx",
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
                      image: AssetImage("assets/MELAZA.jpg"),
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
        margin: const EdgeInsets.symmetric(vertical: 50),
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
                      image: AssetImage("assets/MELAZA.jpg"),
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
                            "Melaza",
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
                            "Sub producto extraído de la caña de azúcar a través de un proceso de molienda, purificación del jugo, cristalización, centrifugación. Se utiliza como materia prima en destilerías, fertilizantes, alimentos balanceados para animales y levadura.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Producido en Chumbagua, San Marcos, Santa Bárbara.",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "Brix hidrométrico: 85° mín, 87° máx",
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
