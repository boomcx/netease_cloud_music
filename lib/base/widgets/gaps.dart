import 'package:flutter/material.dart';

class Gaps {
  static const blank = SizedBox();

  static const expand = Expanded(child: SizedBox());

  static Widget boldLine(
          {double height = 5, Color color = const Color(0xffF4F4F4)}) =>
      Container(
        height: height,
        color: color,
      );

  // 分割线
  static const line = Divider(
    height: 0.5,
    color: Color(0xffEEEEEE),
  );

  static vLine({
    double width = 1,
    double height = double.infinity,
    Color color = const Color(0xffEEEEEE),
  }) =>
      Container(
        color: color,
        width: width,
        height: height,
      );

  // width
  static const w1 = SizedBox(width: 1);
  static const w2 = SizedBox(width: 2);
  static const w4 = SizedBox(width: 4);
  static const w5 = SizedBox(width: 5);
  static const w6 = SizedBox(width: 6);
  static const w8 = SizedBox(width: 8);
  static const w10 = SizedBox(width: 10);
  static const w12 = SizedBox(width: 12);
  static const w11 = SizedBox(width: 11);
  static const w15 = SizedBox(width: 15);
  static const w16 = SizedBox(width: 16);
  static const w20 = SizedBox(width: 20);
  static const w25 = SizedBox(width: 25);
  static const w30 = SizedBox(width: 30);
  static const w40 = SizedBox(width: 40);
  static const w50 = SizedBox(width: 50);

  // height
  static const h1 = SizedBox(height: 1);
  static const h2 = SizedBox(height: 2);
  static const h3 = SizedBox(height: 3);
  static const h4 = SizedBox(height: 4);
  static const h5 = SizedBox(height: 5);
  static const h6 = SizedBox(height: 6);
  static const h7 = SizedBox(height: 7);
  static const h8 = SizedBox(height: 8);
  static const h10 = SizedBox(height: 10);
  static const h12 = SizedBox(height: 12);
  static const h15 = SizedBox(height: 15);
  static const h18 = SizedBox(height: 18);
  static const h20 = SizedBox(height: 20);
  static const h25 = SizedBox(height: 25);
}
