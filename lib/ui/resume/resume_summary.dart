import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/resume/icon_with_text.dart';

class ResumeSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      height: 1090,
      child: Stack(
        children: [
          Container(
            width: 256,
            height: 1090,
            child: Image.asset(
              'assets/squares_rotated.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  _buildPhoto(),
                  SizedBox(height: 16),
                  _buildBasicInfo(),
                  _buildSeparator(),
                  _buildAbout(),
                  _buildSeparator(),
                  _buildLanguages(),
                  _buildSeparator(),
                  _buildHobbies(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoto() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: new Border.all(
            color: Colors.amber[600],
            width: 4.0,
          ),
        ),
        child: ClipOval(
          child: Image.asset(
            'assets/picture.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Łukasz Niedziałek',
          style: headerText.copyWith(
            fontSize: 28,
            color: Colors.white,
            height: 1,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8),
        Text(
          'Flutter Dev', // change F to Flutter icon
          style: headerText.copyWith(
            fontSize: 20,
//            height: 1,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        _buildSeparator(),
        IconWithText(Icons.room, 'Warsaw, Poland'),
        Text(
          '    (willing to relocate)',
          style: normalText.copyWith(color: Colors.white),
        ),
        SizedBox(height: 8),
        IconWithText(Icons.phone_android, '+48 788 810 840'),
        SizedBox(height: 8),
        IconWithText(Icons.alternate_email, 'lhniedzialek@gmail.com'),
      ],
    );
  }

  Widget _buildAbout() {
    return Column(
      children: <Widget>[
        Text(
          'ABOUT',
          style: headerText.copyWith(
            color: Colors.amber[600],
            fontSize: 16,
          ),
        ),
        Text(
          '  I am interested in working as a Flutter dev at the moment.' + '\n  My journey with programming has started 4 years ago and since then I have spent many hours improving my skills.' + '\n  I would like to work abroad (for at least two years) so that I can learn a different language and a new environment.',
          style: normalText.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildLanguages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'LANGUAGES',
          style: headerText.copyWith(
            color: Colors.amber[600],
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        Text('Polish (native)', style: normalText.copyWith(color: Colors.white)),
        Text('English (C1)', style: normalText.copyWith(color: Colors.white)),
        Row(
          children: <Widget>[
            Text('German (~B1', style: normalText.copyWith(color: Colors.white)),
            Icon(Icons.arrow_upward, color: Colors.white, size: 14),
            Text(')', style: normalText.copyWith(color: Colors.white)),
          ],
        ),
      ],
    );
  }

  Widget _buildHobbies() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          'HOBBIES',
          style: headerText.copyWith(
            color: Colors.amber[600],
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          children: <Widget>[
            _buildHobbyTile(Icons.book, 'books'),
            _buildHobbyTile(Icons.adb, 'fantasy'),
            _buildHobbyTile(Icons.accessibility_new, 'gym'),
            _buildHobbyTile(Icons.directions_car, 'cars'),
          ],
        ),
      ],
    );
  }

  Widget _buildHobbyTile(IconData iconData, String text) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: new Border.all(
          color: Colors.amber[600],
          width: 2.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(iconData, size: 16, color: Colors.white),
          Text(
            text,
            style: normalText.copyWith(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      child: Container(
        height: 2,
        decoration: BoxDecoration(
          color: Colors.amber[600],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
