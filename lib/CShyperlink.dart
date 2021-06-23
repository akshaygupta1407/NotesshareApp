import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HperLink extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new RichText(
        text: new TextSpan(
          children: [
            new TextSpan(
              text: 'This is no Link, ',
              style: new TextStyle(color: Colors.black),
            ),
            new TextSpan(
              text: 'but this is',
              style: new TextStyle(color: Colors.blue),
              recognizer: new TapGestureRecognizer()
                ..onTap = () { launch('https://docs.flutter.io/flutter/services/UrlLauncher-class.html');
                },
            ),
          ],
        ),
      ),
    );
  }
}
