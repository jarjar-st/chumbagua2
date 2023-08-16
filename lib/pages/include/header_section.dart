import 'package:flutter_next/flutter_next.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/hover_widget.dart';
import '../../constants.dart';
import '../../widgets/navigation_drawer.dart';

class HeaderSection extends StatelessWidget {
  final ScrollController? scrollController;

  const HeaderSection({
    Key? key,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomNavigationDrawer(
      padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: context.isMobile ? 20 : context.width * 0.05),
      scrollController: scrollController,
      color: Colors.white,
      childrens: [
        HoverWidgetBTN(
            text: "Inicio",
            cb: () async {
              loaderCallback(() async {
                currentPage.value = pages[0];
              });
            }),
        HoverWidgetBTN(
            text: "Nuestra Identidad",
            cb: () async {
              loaderCallback(() async {
                currentPage.value = pages[1];
              });
            }),
        HoverWidgetBTN(
            text: "Sostenibilidad",
            cb: () async {
              loaderCallback(() async {
                currentPage.value = pages[2];
              });
            }),
        MenuAnchor(
          builder: (context, controller, child) {
            return HoverWidget(builder: (BuildContext context, bool isHovered) {
              return HoverWidgetBTN(
                  text: "Procesos",
                  cb: () async {
                    if (controller.isOpen) {
                      controller.close();
                    } else {
                      controller.open();
                    }
                  });
            });
          },
          menuChildren: [
            MenuItemButton(
              child: const Text('Proceso Agrícola'),
              onPressed: () {
                loaderCallback(() async {
                  currentPage.value = pages[3];
                });
              },
            ),
            MenuItemButton(
              child: const Text('Proceso Industrial'),
              onPressed: () {
                loaderCallback(() async {
                  currentPage.value = pages[4];
                });
              },
            ),
            MenuItemButton(
              onPressed: () {},
              child: const Text('Energía Renovable'),
            ),
          ],
        ),
        HoverWidgetBTN(
            text: "Productos",
            cb: () async {
              loaderCallback(() async {
                currentPage.value = pages[5];
              });
            }),
        HoverWidgetBTN(
            text: "Bolsa de Trabajo",
            cb: () async {
              if (!await launchUrl(
                  Uri.parse("https://grupocadelga.com/bolsa-de-empleo"))) {
                throw Exception('Could not launch');
              }
            }),
      ],
      leading: Container(
        child: Image.asset(
          "assets/Logo2.0.png",
          height: 80,
          fit: BoxFit.contain,
        ).onTap(() {
          loaderCallback(() async {
            currentPage.value = pages[0];
          });
          //GoRouter.of(context).push('/');
        }),
      ),
    );
  }
}
