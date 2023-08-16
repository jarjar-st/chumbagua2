import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import 'footer_animation_dart.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return Column(
        children: [
          const CamionAnimation(),
          Container(
            width: double.infinity,
            height: 300,
            color: primaryColor,
            child: const Column(
              children: [
                Expanded(
                  child: Column(),
                ),
                Divider(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "© 2023 Chumbagua,Todos los derechos reservados.",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Powered By Ogilvy.com",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Gap(10),
              ],
            ),
          )
        ],
      );
    } else {
      return Column(
        children: [
          const CamionAnimation(),
          Container(
            width: double.infinity,
            height: 300,
            color: primaryColor,
            child: const Column(
              children: [
                Expanded(
                  child: Column(),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "© 2023 Chumbagua,Todos los derechos reservados.",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Powered By Ogilvy.com",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Gap(10),
              ],
            ),
          )
        ],
      );
    }
  }
}
