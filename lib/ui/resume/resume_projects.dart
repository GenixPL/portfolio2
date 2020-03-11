import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class ResumeProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	  return Padding(
		  padding: const EdgeInsets.only(left: 16, right: 16),
		  child: Column(
			  crossAxisAlignment: CrossAxisAlignment.start,
			  children: <Widget>[
				  Padding(
					  padding: const EdgeInsets.only(bottom: 16),
					  child: Text(
						  'MAIN PROJECTS',
						  style: headerText.copyWith(fontSize: 20),
					  ),
				  ),
				  _buildPlacelytics(),
				  SizedBox(height: 20),
				  _buildThg(),
				  SizedBox(height: 20),
				  _buildPictile(),
			  ],
		  ),
	  );
  }

  Widget _buildPlacelytics() {
	  return Column(
		  crossAxisAlignment: CrossAxisAlignment.stretch,
		  children: <Widget>[
			  Text(
				  'Placelytics (B.E. project)',
				  style: normalText.copyWith(
					  fontWeight: FontWeight.w600,
					  fontSize: 18,
				  ),
			  ),
			  SizedBox(height: 4),
			  Text(
				  'Technologies: Flutter, Firestore, Firebase Auth, Google Maps, Rive',
				  style: normalText,
			  ),
			  SizedBox(height: 4),
			  Text('My responsibilites:', style: normalText),
			  SizedBox(height: 4),
			  Text('   (Entire mobile app development)', style: normalText),
			  SizedBox(height: 4),
			  Text(' - Creating design', style: normalText),
			  SizedBox(height: 4),
			  Text(' - Writing logic (inclding communication with Firebase)', style: normalText),
			  SizedBox(height: 4),
			  Text(' - Implementing UI', style: normalText),
		  ],
	  );
  }

  Widget _buildThg() {
	  return Column(
		  crossAxisAlignment: CrossAxisAlignment.stretch,
		  children: <Widget>[
			  Text(
				  'The Hardest Game',
				  style: normalText.copyWith(
					  fontWeight: FontWeight.w600,
					  fontSize: 18,
				  ),
			  ),
			  SizedBox(height: 4),
			  Text(
				  'Technologies: Flutter, Rive',
				  style: normalText,
			  ),
			  SizedBox(height: 4),
			  Text('My responsibilites:', style: normalText),
			  SizedBox(height: 4),
			  SizedBox(height: 4),
			  Text(' - Improving and extending UI', style: normalText),
		  ],
	  );
  }

  Widget _buildPictile() {
	  return Column(
		  crossAxisAlignment: CrossAxisAlignment.stretch,
		  children: <Widget>[
			  Text(
				  'Pictile',
				  style: normalText.copyWith(
					  fontWeight: FontWeight.w600,
					  fontSize: 18,
				  ),
			  ),
			  SizedBox(height: 4),
			  Text(
				  'Technologies: Flutter, sqflite',
				  style: normalText,
			  ),
			  SizedBox(height: 4),
			  Text('My responsibilites:', style: normalText),
			  SizedBox(height: 4),
			  Text('   (Entire mobile app development)', style: normalText),
			  SizedBox(height: 4),
			  Text(' - Creating design', style: normalText),
			  SizedBox(height: 4),
			  Text(' - Writing logic', style: normalText),
			  SizedBox(height: 4),
			  Text(' - Implementing UI', style: normalText),
		  ],
	  );
  }
}
