import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class SocialNav extends StatefulWidget {
  const SocialNav({super.key});

  @override
  State<SocialNav> createState() => _SocialNavState();
}

class _SocialNavState extends State<SocialNav> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 70,
        height: 250,
        color: primaryColor,
        child: Column(
          children: [
            socialButton(
                UniconsLine.facebook_f, "https://www.facebook.com/Chumbagua"),
            socialButton(
                UniconsLine.twitter, "https://twitter.com/Chumbaguahn"),
            socialButton(UniconsLine.instagram,
                "https://www.instagram.com/azucarerachumbagua/"),
            socialButton(UniconsLine.phone, "tel:+504 2540 3155"),
            socialButton(UniconsLine.envelope, "comunicaciones@chumbagua.com"),
          ],
        ),
      ),
    );
  }

  Widget socialButton(IconData icon, String url) {
    return HoverWidget(
        builder: (context, isHovered) => Container(
              color: isHovered ? thirdColor : Colors.transparent,
              height: 250 / 5,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: isHovered ? Colors.black : Colors.white,
                  )
                ],
              ),
            )).onTap(() {
      _launchUrl(url);
    });
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
