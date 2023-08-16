import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/parallax.dart';
import 'include/footer.dart';
import 'include/header_section.dart';
import 'products/products_one.dart';
import 'products/products_three.dart';
import 'products/products_two.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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
                      title: "Productos",
                      height: Get.height / 2,
                      opacity: 0.4,
                    ),
                  ),
                  const ProductOne(),
                  const Divider(height: 1),
                  const ProductTwo(),
                  const Divider(height: 1),
                  const ProductThree(),
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
