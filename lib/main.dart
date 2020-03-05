import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final imgH = getImgHeight(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/background_empty.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(top: imgH * 0.7),
                  child: ClipPath(
                    clipper: WhiteClip(),
                    child: Container(
                      width: w,
                      height: imgH * 0.3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.white.withOpacity(0.2),
                            Colors.white.withOpacity(1.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                _buildYellow(w, imgH),
                CustomPaint(
                  child: Container(
                    width: w,
                    height: imgH,
                  ),
                  painter: BlackPainter(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYellow(double w, double h) {
    return Stack(
      children: [
        CustomPaint(
          child: Container(
            width: w,
            height: h,
          ),
          painter: YellowPainter(),
        ),
        SizedBox(
          width: w,
          height: h * 0.25,
          child: Row(
            children: <Widget>[
            
            ],
          ),
        ),
      ],
    );
  }

  double getImgHeight(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return w / 16 * 9;
  }
}

class YellowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.33);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, Paint()..color = Colors.amber.withOpacity(0.6));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class BlackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    path.moveTo(0, size.height * 0.45);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.85);
    path.lineTo(0, size.height * 0.75);
    path.close();

    canvas.drawPath(path, Paint()..color = Colors.black.withOpacity(0.6));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class WhiteClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
