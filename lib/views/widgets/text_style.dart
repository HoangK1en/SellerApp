import 'package:emart_seller/const/const.dart';
import 'package:flutter/material.dart';

Widget normalText({text, color = Colors.white, size = 14.0}) {
  return "$text".text.color(color).make();
}

Widget boldText({text, color = Colors.white, size = 14.0}) {
  return "$text".text.semiBold.color(color).size(size).make();
}