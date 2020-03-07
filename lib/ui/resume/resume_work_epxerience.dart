import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class ResumeWorkExperience extends StatelessWidget {
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
						  'WORK EXPERIENCE',
						  style: headerText.copyWith(
							  fontSize: 20,
						  ),
					  ),
				  ),
				  Text(
					  'Beside The Park',
					  style: normalText.copyWith(
						  fontWeight: FontWeight.w600,
						  fontSize: 18,
					  ),
				  ),
				  SizedBox(height: 4),
				  Text(
					  'Apr 2018 - Oct 2018',
					  style: normalText.copyWith(
						  fontWeight: FontWeight.w600,
						  fontSize: 17,
					  ),
				  ),
				  SizedBox(height: 4),
				  Text(
					  'Technologies: iOS, Android, Objective-C, Java, Kiwi, Mockito',
					  style: normalText,
				  ),
				  SizedBox(height: 4),
				  Text(
					  'My responsibilites: (% of my work)',
					  style: normalText,
				  ),
				  SizedBox(height: 4),
				  Text(
					  ' - Adding new features into Android and iOS SDKs (50%)',
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
}
