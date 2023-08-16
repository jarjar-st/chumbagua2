// Página vacía
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/main_page.dart';
import '../pages/not_found_page.dart';

var emptyHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const NotFoundPage();
});

var mainPage = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MainPage();
});

var homePage = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});
