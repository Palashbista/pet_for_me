import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutCardDisplay extends StatelessWidget {
  AboutCardDisplay({@required this.petAboutTextDisplay});

  final String petAboutTextDisplay;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "ABOUT",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Divider(),
            Center(
              child: Text(
                petAboutTextDisplay,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class ContactCardDisplay extends StatefulWidget {

  ContactCardDisplay({@required this.petContactTextDisplay});

  final String petContactTextDisplay;

  @override
  _ContactCardDisplayState createState() => _ContactCardDisplayState();
}

class _ContactCardDisplayState extends State<ContactCardDisplay> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "CONTACT",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Align(
                  alignment: Alignment(0.1, 0.4),
                  heightFactor: 0.8,
                  child: FloatingActionButton(
                    child: Icon(Icons.email),
                    onPressed:() {
                      setState(() {
                        _launchURL();
                      });
                    },
                  ),
                ),
              ],
            ),
            Divider(),
            Center(
              child: Text(
                widget.petContactTextDisplay,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  _launchURL() async {
    var url = 'https://mail.google.com/mail/?fs=1&view=cm&shva=1&su=';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


//
//class ContactCardDisplay extends StatelessWidget {
//  ContactCardDisplay({@required this.petContactTextDisplay});
//
//  final String petContactTextDisplay;
//
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      margin: EdgeInsets.all(5.0),
//      child: Container(
//        padding: EdgeInsets.all(10.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                Text(
//                  "CONTACT",
//                  textAlign: TextAlign.left,
//                  style: TextStyle(
//                    fontWeight: FontWeight.bold,
//                    fontSize: 16.0,
//                  ),
//                ),
//                Align(
//                  alignment: Alignment(0.1, 0.4),
//                  heightFactor: 0.8,
//                  child: FloatingActionButton(
//                    child: Icon(Icons.email),
//                    onPressed: () {
//                      _launchURL();
//                    },
//                  ),
//                ),
//              ],
//            ),
//            Divider(),
//            Center(
//              child: Text(
//                petContactTextDisplay,
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                  fontSize: 16.0,
//                ),
//              ),
//            ),
//          ],
//        ),
//        decoration: BoxDecoration(
//          color: Colors.lightGreen,
//          borderRadius: BorderRadius.circular(10.0),
//        ),
//      ),
//    );
//  }
//
//
//  _launchURL() async {
//    const url = 'https://flutter.dev';
//    if (await canLaunch(url)) {
//      await launch(url);
//    } else {
//      throw 'Could not launch $url';
//    }
//  }
//}
