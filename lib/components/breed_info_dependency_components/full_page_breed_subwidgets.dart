import 'package:flutter/material.dart';


class FullPageBreedSubwidgets extends StatelessWidget {

  FullPageBreedSubwidgets({@required this.breedWidgetTitleDisplay, @required this.breedWidgetTextDisplay});

  final String breedWidgetTextDisplay;
  final String breedWidgetTitleDisplay;

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
              breedWidgetTitleDisplay,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Divider(),
            Center(
              child: Text(
                breedWidgetTextDisplay,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}