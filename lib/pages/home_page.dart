import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../constants.dart';
import 'home/estadisticas.dart';
import 'home/intro_home.dart';
import 'home/testimonial_home.dart';
import 'home/timeline.dart';
import 'include/footer.dart';
import 'include/header_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController.value,
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          floating: false,
          pinned: true,
          collapsedHeight: 110,
          toolbarHeight: 100,
          titleSpacing: 0,
          title: const HeaderSection(),
          expandedHeight: Get.height,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/home_img_1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.5),
                ),
                Positioned.fill(
                  bottom: -100,
                  child: Align(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Chumbagua es',
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: Fonts.adelia,
                          ),
                        ),
                        const Gap(20),
                        SizedBox(
                          height: 70,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: Fonts.adelia),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                FadeAnimatedText('Desarrollo '),
                                FadeAnimatedText('Progreso'),
                                FadeAnimatedText('Empleo'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: true,
            child: Column(
              children: [
                Column(
                  children: [
                    IntroSection(),
                    TimeLineHome(),
                    EstadisticasPage(),
                    TestimonialSection(),
                  ],
                ),
                FooterPage(),
              ],
            ))
      ],
    );
  }
}
