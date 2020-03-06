import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/common/box/box.dart';

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.amber.withOpacity(1.0),
              Colors.white.withOpacity(1.0),
            ],
            stops: [
              0.15,
              0.20,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(flex: 15, child: _buildTopBar()),
            // empty space to make padding between colors
            Expanded(flex: 5, child: Container()),
            Expanded(flex: 80, child: _buildBody()),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          _buildPhotoAndSummary(),
          _buildSeparator(),
          _buildEducation(),
          _buildSeparator(),
          _buildWorkExperience(),
        ],
      ),
    );
  }

  Widget _buildPhotoAndSummary() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipOval(
              child: Image.asset(
                'assets/trump.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            children: <Widget>[
              SizedBox(height: 16),
              Text(
                'FLUTTER DEV',
                style: headerText.copyWith(fontSize: 20),
              ),
              SizedBox(height: 32),
              _buildIconText(Icons.room, 'Warsaw'),
              SizedBox(height: 16),
              _buildIconText(Icons.phone_android, '+48 788 810 840'),
              SizedBox(height: 16),
              _buildIconText(Icons.alternate_email, 'lhniedzialek@gmail.com'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIconText(IconData iconData, String text) {
    return Row(
      children: <Widget>[
        SizedBox(width: 8),
        Icon(iconData),
        SizedBox(width: 8),
        Text(text, style: normalText),
      ],
    );
  }

  Widget _buildEducation() {
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
            style: normalText.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            'Sep 2016 - Feb 2020',
            style: normalText.copyWith(fontWeight: FontWeight.w600),
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

  Widget _buildWorkExperience() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'WORK EXPERIENCE',
              style: headerText.copyWith(fontSize: 20),
            ),
          ),
          Text(
            'Beside The Park',
            style: normalText.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            'Apr 2018 - Oct 2018',
            style: normalText.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            ' - Adding new features to Android and iOS SDKs (50%)',
            style: normalText,
          ),
          Text(
            ' - Testing (40%)',
            style: normalText,
          ),
          Text(
            ' - Additional debugging (5%)',
            style: normalText,
          ),
          Text(
            ' - Writing documentation (2.5%)',
            style: normalText,
          ),
          Text(
            ' - Communication with client (2.5%)',
            style: normalText,
          ),
        ],
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
