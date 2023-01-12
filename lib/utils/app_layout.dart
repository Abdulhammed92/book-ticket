import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixel) {
    double x = getScreenHeight() / pixel;
    return getScreenHeight() / x;
  }
  static GetWidth(double pixel) {
    double x = getScreenWidth() / pixel;
    return getScreenWidth() / x;
  }
}
