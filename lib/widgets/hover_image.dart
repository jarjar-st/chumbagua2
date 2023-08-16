import '../constants.dart';
import 'custom_dual_tone_border.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:flutter/material.dart';

class ImageHover extends StatefulWidget {
  final String? imageName;
  const ImageHover({Key? key, this.imageName}) : super(key: key);

  @override
  State<ImageHover> createState() => _ImageHoverState();
}

class _ImageHoverState extends State<ImageHover>
    with SingleTickerProviderStateMixin {
  late AnimationController scaleController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    scaleController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
        hoverDuration: const Duration(milliseconds: 1000),
        builder: (BuildContext context, bool isHovered) {
          if (isHovered) {
            scaleController.forward();
          } else {
            scaleController.reverse();
          }
          return Stack(
            children: [
              Image.asset(
                widget.imageName!,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned.fill(
                child: ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(scaleController),
                  child: Center(
                    child: Container(
                      color: primaryColor.withOpacity(0.7),
                      padding: const EdgeInsets.all(20.0),
                      child: CustomPaint(
                        painter: MyPainter(),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
