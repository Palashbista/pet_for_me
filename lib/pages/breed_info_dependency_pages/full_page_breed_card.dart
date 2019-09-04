import 'package:flutter/material.dart';
import 'package:pet_for_me/components/breed_info_dependency_components/full_page_breed_subwidgets.dart';
import 'package:pet_for_me/components/constants.dart';

class FullPageBreedCard extends StatefulWidget {
  FullPageBreedCard({
    @required this.breedImageDisplay,
    @required this.breedNameDisplay,
    @required this.breedAboutDisplay,
    @required this.breedHistoryDisplay,
    @required this.breedHealthDisplay,

  });

  final Image breedImageDisplay;
  final String breedNameDisplay;
  final String breedAboutDisplay;
  final String breedHistoryDisplay;
  final String breedHealthDisplay;


  @override
  _FullPageBreedCardState createState() => _FullPageBreedCardState();
}

class _FullPageBreedCardState extends State<FullPageBreedCard> {
  //bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Breed Info Detailed Page")),
      body: SingleChildScrollView(
        //margin: EdgeInsets.all(10.0),
        //elevation: 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: widget.breedImageDisplay,
            ),
            Container(
              child: Center(
                heightFactor:2.0,
                child: Text(
                  widget.breedNameDisplay,
                  style: kAdoptText,
                ),
              ),
            ),
            Divider(),
            Container(
              child: FullPageBreedSubwidgets(
                breedWidgetTitleDisplay: "ABOUT",
                breedWidgetTextDisplay: widget.breedAboutDisplay,
              ),
            ),
            Divider(),
            Container(
              child: FullPageBreedSubwidgets(
                breedWidgetTitleDisplay: "HISTORY",
                breedWidgetTextDisplay: widget.breedHistoryDisplay,
              ),
            ),
            Divider(),
            Container(
              child: FullPageBreedSubwidgets(
                breedWidgetTitleDisplay: "HEALTH",
                breedWidgetTextDisplay: widget.breedHealthDisplay,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


