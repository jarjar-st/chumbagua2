import 'package:flutter/material.dart';

import 'breakpoints.dart';

class BreakPointSize {
  static double size({
    required double width,
    required double xs,
    required double sm,
    required double md,
    required double lg,
    required double xl,
  }) {
    double size = 0.0;

    switch (Breakpoints(width).toString()) {
      case "xs":
        size = xs;
        break;
      case "sm":
        size = sm;
        break;
      case "md":
        size = md;
        break;
      case "lg":
        size = lg;
        break;
      case "xl":
        size = xl;
        break;
    }

    return size;
  }

  static Alignment alignment({
    required double width,
    required Alignment xs,
    required Alignment sm,
    required Alignment md,
    required Alignment lg,
    required Alignment xl,
  }) {
    Alignment size = Alignment.center;

    switch (Breakpoints(width).toString()) {
      case "xs":
        size = xs;
        break;
      case "sm":
        size = sm;
        break;
      case "md":
        size = md;
        break;
      case "lg":
        size = lg;
        break;
      case "xl":
        size = xl;
        break;
    }

    return size;
  }

  static MainAxisAlignment mainAxisAlignment({
    required double width,
    required MainAxisAlignment xs,
    required MainAxisAlignment sm,
    required MainAxisAlignment md,
    required MainAxisAlignment lg,
    required MainAxisAlignment xl,
  }) {
    MainAxisAlignment size = MainAxisAlignment.start;

    switch (Breakpoints(width).toString()) {
      case "xs":
        size = xs;
        break;
      case "sm":
        size = sm;
        break;
      case "md":
        size = md;
        break;
      case "lg":
        size = lg;
        break;
      case "xl":
        size = xl;
        break;
    }

    return size;
  }

  static Widget rowCol({
    required double width,
    required List<Widget> children,
    required String xs,
    required String sm,
    required String md,
    required String lg,
    required String xl,
  }) {
    Widget size = const Row();

    switch (Breakpoints(width).toString()) {
      case "xs":
        size = (xs == "row")
            ? Row(
                children: children,
              )
            : Column(
                children: children,
              );
        break;
      case "sm":
        size = (sm == "row")
            ? Row(
                children: children,
              )
            : Column(
                children: children,
              );
        break;
      case "md":
        size = (md == "row")
            ? Row(
                children: children,
              )
            : Column(
                children: children,
              );
        break;
      case "lg":
        size = (lg == "row")
            ? Row(
                children: children,
              )
            : Column(
                children: children,
              );
        break;
      case "xl":
        size = (xl == "row")
            ? Row(
                children: children,
              )
            : Column(
                children: children,
              );
        break;
    }

    return size;
  }
}
