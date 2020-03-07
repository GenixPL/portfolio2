import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class ResumeSkills extends StatefulWidget {
  @override
  _ResumeSkillsState createState() => _ResumeSkillsState();
}

class _ResumeSkillsState extends State<ResumeSkills> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _curve;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );

    _curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    );

    Tween<double>(begin: 0, end: 100).animate(_controller)
      ..addListener(() {
        setState(() {});
      },);

    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      _controller.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildSkillTile('Flutter', 75),
                    _buildSkillTile('Android', 40),
                    _buildSkillTile('iOS', 20),
                    _buildSkillTile('NativeScript', 10),
                    _buildThreeDots(),
                  ],
                ),
              ),
              _buildSeparator(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildSkillTile('Dart', 80),
                    _buildSkillTile('Kotlin', 50),
                    _buildSkillTile('Java', 50),
                    _buildSkillTile('Python', 35),
                    _buildSkillTile('Objective-C', 30),
                    _buildThreeDots(),
                  ],
                ),
              ),
              _buildSeparator(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildSkillTile('Rive / Flare', 60),
                    _buildSkillTile('Gravit Designer', 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillTile(String text, int percent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text, style: headerText.copyWith(color: Colors.white)),
        LayoutBuilder(
          builder: (_, constraints) {
            final w = constraints.maxWidth;

            return Container(
              width: w,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.amber[600],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: w * (percent / 100) * _curve.value,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildThreeDots() {
    return Row(
      children: <Widget>[
        Text('.', style: headerText.copyWith(color: Colors.white)),
        Text('.', style: headerText.copyWith(color: Colors.white)),
        Text('.', style: headerText.copyWith(color: Colors.white)),
      ],
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Container(
        width: 2,
        decoration: BoxDecoration(
          color: Colors.amber[600],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
