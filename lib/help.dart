import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
              width: 40,
            ),
            Center(
              child: Container(
                child: Text(
                  "DEVELOPER",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                child: CircleAvatar(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/charac.jpg'),
                radius: 60,
              ),
              radius: 63,
              backgroundColor: Colors.white38,
            ),),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "AKSHAY GUPTA",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Column(
              children: <Widget>[
                Card(
                  shape: CircleBorder(),
                  child: InkWell(
                    onTap:()async{
                      String url = "https://www.linkedin.com/in/akshay-gupta-bb87b8215/";
                      await launch(url);
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/link.jpg'),
                      radius: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
               Padding(
                 padding: EdgeInsets.all(12.0),
                   child: Text('The aim is to provide access to academic resources in one place and anyone can share there resources among themselves.'
                   ),
               ),
                SizedBox(
                  height: 280,
                ),
                Text("2021 \u00a9 NotezEzzy"),
              ],
            ),
            // Card(
            //   shape: CircleBorder(),
            //   child: InkWell(
            //     onTap:()async{
            //       String url = "https://www.linkedin.com/in/akshay-gupta-bb87b8215/";
            //       await launch(url);
            //     },
            //     child: CircleAvatar(
            //       backgroundImage: AssetImage('assets/link.jpg'),
            //       radius: 20,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
