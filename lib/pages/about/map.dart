import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
import 'package:flutter_map/plugin_api.dart';

import '../../constants.dart'; //

class AboutMapPage extends StatefulWidget {
  const AboutMapPage({super.key});

  @override
  State<AboutMapPage> createState() => _AboutMapPageState();
}

class _AboutMapPageState extends State<AboutMapPage> {
  late final MapController _mapController;

  @override
  void initState() {
    _mapController = MapController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: double.infinity,
      height: Get.height,
      child: Column(
        children: [
          NextContainer(
            mainAxisAlignment: MainAxisAlignment.center,
            padding: const EdgeInsets.symmetric(vertical: 30),
            children: [
              NextRow(
                children: [
                  NextCol(
                    sizes: 'col-12 col-md-12 col-sm-12',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Ubicación",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.mulish(
                            color: primaryColor,
                            fontSize: 46,
                            fontWeight: FontWeight.w800,
                            height: 1,
                          ),
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            duration: const Duration(milliseconds: 300)),
                        const Gap(30),
                        Text(
                          "Km 63 Carretera hacia occidente, desvío en la flecha hacia Chumbagua, San Marcos, Santa Bárbara",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: primaryColor,
                            fontSize: 29,
                            fontWeight: FontWeight.w800,
                            height: 1,
                          ),
                        ).fadeIn(
                            variant: NextFadeInVariant.fadeInBottom,
                            delay: const Duration(milliseconds: 600),
                            duration: const Duration(milliseconds: 300)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(20),
          Expanded(
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                enableScrollWheel: false,
                center: LatLng(15.2369013, -88.4898746),
                zoom: 18,
                maxZoom: 19,
                minZoom: 3,
              ),
              children: [
                TileLayer(
                  tileProvider: NetworkTileProvider(),
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
              ],
            ).fadeIn(
                variant: NextFadeInVariant.fadeInBottom,
                delay: const Duration(milliseconds: 600),
                duration: const Duration(milliseconds: 300)),
          ),
        ],
      ),
    );
  }
}
