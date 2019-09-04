import 'package:flutter/material.dart';
import 'package:pet_for_me/components/constants.dart';
import 'full_page_breed_card.dart';

class BreedCard extends StatefulWidget {

  BreedCard(
      {this.breedImage, this.breedName, this.breedAbout, this.breedHealth, this.breedHistory});

  final Image breedImage;
  final String breedName;
  final String breedAbout;
  final String breedHealth;
  final String breedHistory;


  @override
  _BreedCardState createState() => _BreedCardState();
}

class _BreedCardState extends State<BreedCard> {
  //bool onOff = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      borderOnForeground: true,
      elevation: 20.0,
      child: Column(
        children: <Widget>[
          InkWell(
            splashColor: Colors.amber.withAlpha(30),
            child: Column(
              children: <Widget>[
                Container(
                  child: widget.breedImage,
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      widget.breedName,
                      style: kAdoptText,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              print(" Card tapped");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FullPageBreedCard(
                        breedImageDisplay: widget.breedImage,
                        breedNameDisplay: widget.breedName,
                        breedAboutDisplay: widget.breedAbout,
                        breedHistoryDisplay: widget.breedHistory,
                        breedHealthDisplay: widget.breedHealth,
                      ),
                ),
              );
//          Navigator.of(context).pushNamed('/FullPageCard');
            },
          ),
        ],
      ),
    );
  }

}

