import 'package:fluro/fluro.dart';

import 'route_handles.dart';

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define("/", handler: mainPage);
    router.notFoundHandler = emptyHandler; // Página vacía
  }
}
