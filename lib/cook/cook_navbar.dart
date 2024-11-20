import 'package:example_project/fundelmant/constant.dart';
import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class CustomNavbarCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Path path_0 = Path();
    // path_0.moveTo(0.5, 0.5);
    // path_0.lineTo(150.055, 0.5);
    // path_0.cubicTo(150.09, 0.771602, 150.143, 1.15967, 150.222, 1.64805);
    // path_0.cubicTo(150.385, 2.65794, 150.656, 4.09758, 151.085, 5.82387);
    // path_0.cubicTo(151.944, 9.27443, 153.442, 13.881, 156, 18.4926);
    // path_0.cubicTo(161.125, 27.7305, 170.521, 37, 187.5, 37);
    // path_0.cubicTo(204.48, 37, 213.752, 27.7288, 218.752, 18.4879);
    // path_0.cubicTo(221.248, 13.8756, 222.683, 9.26837, 223.495, 5.81758);
    // path_0.cubicTo(223.901, 4.09115, 224.151, 2.6514, 224.3, 1.64144);
    // path_0.cubicTo(224.372, 1.15703, 224.42, 0.771293, 224.451, 0.5);
    //
    // path_0.lineTo(374.5, 0.5);
    // path_0.lineTo(374.5, 55.5);
    //
    // path_0.lineTo(0.5, 55.5);
    // path_0.lineTo(0.5, 0.5);
    // path_0.close();


//     Path path_0 = Path();
//     path_0.moveTo(0.0, 0.5); // بداية الرسم من الطرف الأيسر
//     path_0.lineTo(150.055, 0.5); // الخط الأفقي الأول
//     path_0.cubicTo(150.09, 0.771602, 150.143, 1.15967, 150.222, 1.64805);
//     path_0.cubicTo(150.385, 2.65794, 150.656, 4.09758, 151.085, 5.82387);
//     path_0.cubicTo(151.944, 9.27443, 153.442, 13.881, 156, 18.4926);
//     path_0.cubicTo(161.125, 27.7305, 170.521, 37, 187.5, 37);
//     path_0.cubicTo(204.48, 37, 213.752, 27.7288, 218.752, 18.4879);
//     path_0.cubicTo(221.248, 13.8756, 222.683, 9.26837, 223.495, 5.81758);
//     path_0.cubicTo(223.901, 4.09115, 224.151, 2.6514, 224.3, 1.64144);
//     path_0.cubicTo(224.372, 1.15703, 224.42, 0.771293, 224.451, 0.5);
//
// // تغيير النهاية لتصبح 420 بكسل متساوي من الطرفين
//     path_0.lineTo(420.0, 0.5); // تعديل العرض ليصل إلى 420
//     path_0.lineTo(420.0, 55.5); // السطر السلفي
//     path_0.lineTo(0.0, 55.5); // نهاية الشكل
//     path_0.lineTo(0.0, 0.5); // العودة لنقطة البداية
//     path_0.close();
    Path path_0 = Path();
    path_0.moveTo(20.0, 0.5); // زيادة 20 بكسل من الطرف الأيسر
    path_0.lineTo(150.055 + 20, 0.5); // إضافة 20 بكسل لزيادة العرض
    path_0.cubicTo(150.09 + 20, 0.771602, 150.143 + 20, 1.15967, 150.222 + 20, 1.64805);
    path_0.cubicTo(150.385 + 20, 2.65794, 150.656 + 20, 4.09758, 151.085 + 20, 5.82387);
    path_0.cubicTo(151.944 + 20, 9.27443, 153.442 + 20, 13.881, 156 + 20, 18.4926);
    path_0.cubicTo(161.125 + 20, 27.7305, 170.521 + 20, 37, 187.5 + 20, 37);
    path_0.cubicTo(204.48 + 20, 37, 213.752 + 20, 27.7288, 218.752 + 20, 18.4879);
    path_0.cubicTo(221.248 + 20, 13.8756, 222.683 + 20, 9.26837, 223.495 + 20, 5.81758);
    path_0.cubicTo(223.901 + 20, 4.09115, 224.151 + 20, 2.6514, 224.3 + 20, 1.64144);
    path_0.cubicTo(224.372 + 20, 1.15703, 224.42 + 20, 0.771293, 224.451 + 20, 0.5);

// تعديل النقطة النهائية لتصبح 420 بكسل
    path_0.lineTo(420.0, 0.5); // النقطة النهائية على الجانب الأيمن
    path_0.lineTo(420.0, 55.5); // السطر السفلي
    path_0.lineTo(0.0, 55.5); // العودة للنقطة السفلية
    path_0.lineTo(0.0, 0.5); // العودة لنقطة البداية
    path_0.close();




    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = blackColor.withOpacity(.1);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
