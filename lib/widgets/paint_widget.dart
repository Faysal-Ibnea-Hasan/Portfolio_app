import 'package:flutter/material.dart';

class ShapingPainter extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    final paint = Paint();
    paint.color = Colors.black12;//setting the paint color grayish, so it could cover the lower half of the screen
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);///// Creating a rectangle with size and width same as the canvas
    canvas.drawRect(rect, paint);//Drawing the rectangle using the paint
    paint.color = Colors.purpleAccent; // Covering the upper half of the rectangle

    //// Firstly, creating a path to form the shape
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);

    // Secondly, closing the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);

    // Setting the color property of the paint
    paint.color =Colors.black;

    // Center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);

    // Finally, drawing the circle with center having radius 95.0
    canvas.drawCircle(center, 100.0, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;


}
