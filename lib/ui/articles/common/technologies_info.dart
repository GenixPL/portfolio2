import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2/themes/text_styles.dart';

class TechnologiesInfo extends StatelessWidget {
  final List<String> technologies;

  TechnologiesInfo(this.technologies);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
	      Container(
		      width: 24,
		      height: 24,
		      child: Icon(
			      FontAwesomeIcons.microchip,
			      color: Colors.white,
			      size: 20,
		      ),
	      ),
	      SizedBox(width: 8),
	      Text(
		      'Technologies used:',
		      style: normalText.copyWith(color: Colors.white),
	      ),
	      SizedBox(width: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: <Widget>[
            for (int i = 0; i < technologies.length; i++) _buildRoundedTile(context, technologies[i]),
          ],
        ),
      ],
    );
  }

  Widget _buildRoundedTile(BuildContext context, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Center(
          child: Text(
            text,
            style: normalText.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
