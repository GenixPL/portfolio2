import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class ResumeEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'EDUCATION',
              style: headerText.copyWith(fontSize: 20),
            ),
          ),
          Text(
            'Warsaw University of Technology',
            style: normalText.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Sep 2016 - Feb 2020',
            style: normalText.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Bachelor of Engineering, Computer Science (EN)',
            style: normalText,
          ),
        ],
      ),
    );
  }
}
