import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/loader.dart';
import '../components/social_nav.dart';
import '../constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double currentHeight = 0.0;

  @override
  void initState() {
    currentPage.value = pages[0];
    scrollController.value.addListener(() {});

    super.initState();
  }

  @override
  void dispose() {
    scrollController.value.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        extendBodyBehindAppBar: false,
        body: Stack(
          children: [
            Obx(
              () => loaderPage.value
                  ? currentPage["value"]
                  : const CustomLoader(),
            ),
            (MediaQuery.of(context).size.width < 768)
                ? Container()
                : const SocialNav(),
          ],
        ),
      ),
    );
  }
}
