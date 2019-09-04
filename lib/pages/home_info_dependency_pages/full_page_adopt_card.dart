import 'package:flutter/material.dart';
//import 'package:list_view/components/about_and_contact_card_full_page.dart';
import 'package:pet_for_me/components/home_info_dependency_components/about_and_contact_card_full_page.dart';
import 'package:pet_for_me/components/constants.dart';
import 'package:pet_for_me/jsondata.dart';
//import '../constants.dart';

class FullPageAdoptCard extends StatefulWidget {
  FullPageAdoptCard({
    @required this.petImageDisplay,
    @required this.petNameDisplay,
    @required this.petGenderDisplay,
    @required this.petLocationDisplay,
    @required this.petAboutDisplay,
    @required this.petContactDisplay,
  });


  final Image petImageDisplay;
  final String petNameDisplay;
  final String petGenderDisplay;
  final String petLocationDisplay;
  final String petAboutDisplay;
  final String petContactDisplay;

  @override
  _FullPageAdoptCardState createState() => _FullPageAdoptCardState();
}

class _FullPageAdoptCardState extends State<FullPageAdoptCard> {
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: widget.petImageDisplay,
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.all(5.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.petNameDisplay,
                        //"Name of the Dog!",
                        style: kAdoptText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.petGenderDisplay,
                            //"Gender!",
                            style: kAdoptText,
                          ),
                          Text(
                            widget.petLocationDisplay,
                            //"Location!",
                            style: kAdoptText,
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: AboutCardDisplay(
                petAboutTextDisplay: widget.petAboutDisplay,
              ),
            ),
            Expanded(
              flex: 2,
              child: ContactCardDisplay(
                petContactTextDisplay: widget.petContactDisplay,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//class FullPageCard extends StatelessWidget {
//  FullPageCard({
//    @required this.petImageDisplay,
//    @required this.petNameDisplay,
//    @required this.petGenderDisplay,
//    @required this.petLocationDisplay,
//    @required this.petAboutDisplay,
//    @required this.petContactDisplay,
//  });
//
//  final Image petImageDisplay;
//  final String petNameDisplay;
//  final String petGenderDisplay;
//  final String petLocationDisplay;
//  final String petAboutDisplay;
//  final String petContactDisplay;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text("Main Page")),
//      body: Card(
//        margin: EdgeInsets.all(10.0),
//        elevation: 10.0,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Container(
//              child: petImageDisplay,
//            ),
//          Align(
//            alignment: Alignment(0.9, 1.0),
//            heightFactor: 0.5,
//            child: FloatingActionButton(
//              onPressed: (){
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => FavoritesPage(
//                      petImageFav: petImageDisplay,
//                      petNameFav: petNameDisplay,
//                      petGenderFav: petGenderDisplay,
//                      petLocationFav: petLocationDisplay,
//                    ),
//                  ),
//                );
//              },
//              child: Icon(Icons.favorite,
//                size: 40.0,
//                color: Colors.white,
//              ),
//            ),
//          ),
//            Expanded(
//              child: Card(
//                margin: EdgeInsets.all(5.0),
//                child: Container(
//                  padding: EdgeInsets.all(10.0),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        petNameDisplay,
//                        //"Name of the Dog!",
//                        style: kAdoptText,
//                      ),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        crossAxisAlignment: CrossAxisAlignment.center,
//                        children: <Widget>[
//                          Text(
//                            petGenderDisplay,
//                            //"Gender!",
//                            style: kAdoptText,
//                          ),
//                          Text(
//                            petLocationDisplay,
//                            //"Location!",
//                            style: kAdoptText,
//                          ),
//                        ],
//                      ),
//                    ],
//                  ),
//                  decoration: BoxDecoration(
//                    color: Colors.lightGreen,
//                    borderRadius: BorderRadius.circular(10.0),
//                  ),
//                ),
//              ),
//            ),
//            Expanded(
//              flex: 3,
//              child: AboutCardDisplay(
//                petAboutTextDisplay: petAboutDisplay,
//              ),
//            ),
//            Expanded(
//              flex: 2,
//              child: ContactCardDisplay(
//                petContactTextDisplay: petContactDisplay,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
