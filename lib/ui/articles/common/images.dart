import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Images extends StatefulWidget {
  final List<String> urls;

  Images(this.urls);

  @override
  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  int _i = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    widget.urls.forEach((element) {
      precacheImage(AssetImage(element), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: _moveLeft,
          child: Icon(
            FontAwesomeIcons.chevronLeft,
            color: _getLeftColor(),
          ),
        ),
        Expanded(
          child: Container(
	         height: 600,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset(
                widget.urls[_i],
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: _moveRight,
          child: Icon(
            FontAwesomeIcons.chevronRight,
            color: _getRightColor(),
          ),
        ),
      ],
    );
  }

  Color _getLeftColor() {
    if (_i == 0) {
      return Colors.grey;
    }

    return Colors.white;
  }

  Color _getRightColor() {
    if (widget.urls.length - 1 == _i) {
      return Colors.grey;
    }

    return Colors.white;
  }

  _moveRight() {
    if (_i < widget.urls.length - 1) {
      _i++;
      setState(() {});
      return;
    }
  }

  _moveLeft() {
    if (_i > 0) {
      _i--;
      setState(() {});
      return;
    }
  }
}
