import 'package:fluro/fluro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'constants.dart';
import 'routes/application.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        locale: Get.deviceLocale,
        supportedLocales: const [
          Locale('es'),
          Locale('en'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          FormBuilderLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: 'Chumbagua.com',
        builder: EasyLoading.init(),
        darkTheme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
            ),
            appBarTheme: const AppBarTheme(
              color: primaryColor,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              titleTextStyle: TextStyle(color: Colors.white),
              toolbarTextStyle: TextStyle(color: Colors.white),
            ),
            colorSchemeSeed: primaryColor,
            brightness: Brightness.light,
            useMaterial3: true),
        theme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
            ),
            appBarTheme: const AppBarTheme(
              color: primaryColor,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              toolbarTextStyle: TextStyle(color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white),
            ),
            colorSchemeSeed: primaryColor,
            brightness: Brightness.light,
            useMaterial3: true),
        onGenerateRoute: Application.router.generator,
        scrollBehavior: MyCustomScrollBehavior(),
      );
    });
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
