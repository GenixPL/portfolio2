import 'package:flutter/material.dart';
import 'package:portfolio2/ui/common/box/no_color_scroll_behaviour.dart';
import 'package:portfolio2/ui/resume/resume_education.dart';
import 'package:portfolio2/ui/resume/resume_projects.dart';
import 'package:portfolio2/ui/resume/resume_skills.dart';
import 'package:portfolio2/ui/resume/resume_summary.dart';
import 'package:portfolio2/ui/resume/resume_work_epxerience.dart';
import 'package:portfolio2/ui/top_bar/top_bar.dart';


class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          Expanded(
            flex: 80,
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return ScrollConfiguration(
      behavior: NoColorScrollBehavior(),
      child: Scrollbar(
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
                      ResumeSkills(),
                      SizedBox(height: 24),
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
