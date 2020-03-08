import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio2/themes/text_styles.dart';
import 'package:portfolio2/ui/top_bar.dart';

class ContactPage extends StatelessWidget {
  // todo 'do you need help, have a job offer, or wanna go for beer?
  // what ever it is dont hesitate to email me
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          TopBar(),
          _buildBody(context, w, h - 64),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context, double w, double h) {
    return Container(
      width: w,
      height: h,
      child: Stack(
        children: [
          Container(
            width: w,
            height: h,
            foregroundDecoration: BoxDecoration(
              color: Colors.black87,
            ),
            child: Image.asset(
              'assets/mailbox.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: w,
            height: h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CONTACT ME',
                  style: headerText.copyWith(
                    color: Colors.white,
                    fontSize: 48,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'If you have any questions or offers,',
                  style: normalText.copyWith(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'please feel free to write.',
                  style: normalText.copyWith(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  color: Colors.amber[600],
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                    child: Text(
                      'lhniedzialek@gmail.com',
                      style: normalText.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                FlatButton(
                  splashColor: Colors.white,
                  onPressed: () async {
                    await Clipboard.setData(
                      ClipboardData(text: "lhniedzialek@gmail.com"),
                    );
                  },
                  child: Text(
                    'COPY TO CLIPBOARD',
                    style: headerText.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
