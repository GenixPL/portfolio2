import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/box/no_color_scroll_behaviour.dart';
import 'package:portfolio2/ui/resume/resume_education.dart';
import 'package:portfolio2/ui/resume/resume_projects.dart';
import 'package:portfolio2/ui/resume/resume_summary.dart';
import 'package:portfolio2/ui/resume/resume_work_epxerience.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 64,
            width: w,
            color: Colors.amber,
            child: _buildTopBar(),
          ),
          Expanded(
            flex: 80,
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    // todo add logic with navigation
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'HOME',
          style: headerText,
          maxLines: 1,
        ),
        SizedBox(width: 32),
        Text(
          'PORTFOLIO',
          style: headerText,
          maxLines: 1,
        ),
        SizedBox(width: 32),
        Text(
          'RESUME',
          style: headerText.copyWith(fontSize: 20),
          maxLines: 1,
        ),
        SizedBox(width: 32),
        Text(
          'CONTACT',
          style: headerText,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _buildBody() {
    return ScrollConfiguration(
      behavior: NoColorScrollBehavior(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ResumeSummary(),
              SizedBox(width: 16),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 600),
                child: Column(
                  children: <Widget>[
                    ResumeEducation(),
                    _buildSeparator(),
                    ResumeWorkExperience(),
                    _buildSeparator(),
                    ResumeProjects(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: Container(
        height: 2,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
