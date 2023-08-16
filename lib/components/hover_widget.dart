import 'package:cubrehn/components/breakpoints.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:get/get.dart';

import '../constants.dart';

class HoverWidgetBTN extends StatefulWidget {
  final String? text;
  final AsyncCallback? cb;
  const HoverWidgetBTN({super.key, this.text, this.cb});

  @override
  State<HoverWidgetBTN> createState() => _HoverWidgetBTNState();
}

class _HoverWidgetBTNState extends State<HoverWidgetBTN> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(builder: (BuildContext context, bool isHovered) {
      return Text(widget.text!,
              style: TextStyle(
                  fontFamily: Fonts.ubuntuBold,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isHovered ? thirdColor : primaryColor))
          .container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.only(left: 30))
          .onTap(() {
        widget.cb!();

        if (Breakpoints(Get.width).toString() == "xs") {
          Navigator.pop(context);
        }
      });
    });
  }
}
