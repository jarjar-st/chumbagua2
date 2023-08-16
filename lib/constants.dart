import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/about_page.dart';
import 'pages/home_page.dart';
import 'pages/proceso_agricola.dart';
import 'pages/proceso_industrial.dart';
import 'pages/productos.dart';
import 'pages/sostenibilidad.dart';

const apiDomain = "https://apiv2.demo.co";

// Colors
const Color primaryColor = Color(0xFF416BA9);
const Color secondaryColor = Color(0xFF6BA43A);
const Color thirdColor = Color(0xFFF6CC39);
const Color otherColor = Color(0xFFEBE8E8);

const Color greyColor = Color(0xFF999999);

const Color bgOne = Color(0xFFe6f1f0);

const Color textPrimaryColor = Color(0xFF414347);
const Color textSecondaryColor = Color(0xFF5e5e5e);
const Color textSecondaryColor3 = Color(0xFF5e5e5e);

mixin Fonts {
  static const String adelia = 'adelia';
  static const String bebasRegular = 'BebasNeue-Regular';
  static const String ubuntuBold = 'Ubuntu-Bold';
  static const String montserratRegular = 'MontserratRegular';
}

final loaderPage = true.obs;
final currentPage = {}.obs;
final scrollController = ScrollController().obs;

var pages = [
  {"tilte": "Home", "value": const HomePage()},
  {"tilte": "About", "value": const AboutPape()},
  {"tilte": "Sotenibilidad", "value": const Sostenibilidad()},
  {"tilte": "Proceso Agricola", "value": const ProcesoAgricola()},
  {"tilte": "Proceso Industrial", "value": const ProcesoIndustrial()},
  {"tilte": "Productos", "value": const ProductsPage()},
];

void loaderCallback(AsyncCallback? cb) {
  if (!scrollController.value.hasClients) {
    scrollController.value.animateTo(
        //go to top of scroll
        Get.height, //scroll offset to go
        duration: const Duration(milliseconds: 100), //duration of scroll
        curve: Curves.fastOutSlowIn //scroll type
        );
  }

  Future.delayed(const Duration(milliseconds: 100), () {
    loaderPage.value = false;
    Future.delayed(const Duration(milliseconds: 3000), () {
      loaderPage.value = true;
      cb!();
    });
  });
}
