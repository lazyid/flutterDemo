
//外围光芒填充
class drawSlier extends CustomPainter {
  Paint _paint;
  double _fraction;
  Color currentColor;

  drawSlier(this._fraction, this.currentColor) {
    _paint = Paint()
      ..color = this.currentColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = Global.isBlack == true ? Colors.black : Colors.white;
    _paint.strokeWidth = 40.0;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 115, _paint);

    _paint.color = this.currentColor;
    _paint.strokeWidth = 2.0;

    for (int i = -18; i < _fraction; i++) {
      int angle = i * 5;
      final x = 130 * cos(angle * pi / 180);
      final y = 130 * sin(angle * pi / 180);
      final starX = 110 * cos(angle * pi / 180);
      final starY = 110 * sin(angle * pi / 180);
      canvas.drawLine(Offset(starX, starY), Offset(x, y), _paint);

      final dotx = 100 * cos(angle * pi / 180);
      final doty = 100 * sin(angle * pi / 180);
      final dotStarX = 101 * cos(angle * pi / 180);
      final dotStarY = 101 * sin(angle * pi / 180);
      canvas.drawLine(Offset(dotStarX, dotStarY), Offset(dotx, doty), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}


//内部填充
class drawRedSlier extends CustomPainter {
  Paint _paint;
  double _fraction;

  drawRedSlier(this._fraction) {
    _paint = Paint()
      ..color = pinkColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final h = _fraction + 18;
    final height = h * 2.68;
    final top = h * -2.67 + 95;
    print('===$h === $top');
    canvas.drawRect(Rect.fromLTWH(-95, top, 190, height), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
