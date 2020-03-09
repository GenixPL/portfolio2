import 'package:flutter/material.dart';
import 'package:portfolio2/themes/text_styles.dart';

class ArticleHeader extends StatelessWidget {
 
	final String text;
	
	ArticleHeader(this.text);
	
	@override
  Widget build(BuildContext context) {
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[
				Padding(
				  padding: const EdgeInsets.all(16),
				  child: Text(
				  	text,
				  	style: normalText.copyWith(
				  		color: Colors.white,
				  		fontSize: 32,
				  	),
				  ),
				),
			],
		);
  }
}
