import 'package:flutter/material.dart';

//import 'package:list_view/pages/favorites_page.dart';
//import 'package:pet_for_me/pages/breed_info_dependency_pages/favorites_page.dart';
//import 'package:list_view/pages/full_page_adopt_card.dart';
import 'package:pet_for_me/pages/home_info_dependency_pages/full_page_adopt_card.dart';
import 'package:pet_for_me/pages/favorites.dart';
import '../constants.dart';
import '../global_data_access.dart';

class AdoptCard extends StatefulWidget {
  AdoptCard({@required this.petImage,
    @required this.petName,
    @required this.petGender,
    @required this.petLocation,
    @required this.petAbout,
    @required this.petContact,
    this.favoriteStatus,
    this.customKey,
    this.onCustomTap,
    this.getFavoriteIndex});

  final Image petImage;
  final String petName;
  final String petGender;
  final String petLocation;
  final String petAbout;
  final String petContact;
  final Function onCustomTap;
  final GlobalKey customKey;
  final int getFavoriteIndex;
  final bool favoriteStatus;




  @override
  _AdoptCardState createState() => _AdoptCardState();
}

class _AdoptCardState extends State<AdoptCard> {
  GlobalDataAccess pullData = GlobalDataAccess();
  bool onOff;

  @override
  void initState() {
    onOff = widget.favoriteStatus != null ? widget.favoriteStatus : false;
// TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Image> _petImageList = pullData.getImageListData();
    List<String> _petNameList = pullData.getNameListData();
    List<String> _petGenderList = pullData.getGenderListData();
    List<String> _petLocationList = pullData.getLocationListData();
    List<String> _petAboutDisplayList = pullData.getAboutListData();
    List<String> _petContactDisplayList = pullData.getContactListData();
    return Card(
      margin: EdgeInsets.all(10.0),
      borderOnForeground: true,
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          InkWell(
            splashColor: Colors.amber.withAlpha(30),
            child: Column(
              children: <Widget>[
                Container(
                  child: _petImageList[widget.getFavoriteIndex],
                ),
              ],
            ),
            onTap: () {
              print(" Card tapped");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FullPageAdoptCard(
                          petImageDisplay: _petImageList[widget
                              .getFavoriteIndex],
                          petNameDisplay: _petNameList[widget.getFavoriteIndex],
                          petGenderDisplay: _petGenderList[widget
                              .getFavoriteIndex],
                          petLocationDisplay:
                          _petLocationList[widget.getFavoriteIndex],
                          petAboutDisplay:
                          _petAboutDisplayList[widget.getFavoriteIndex],
                          petContactDisplay:
                          _petContactDisplayList[widget.getFavoriteIndex]),
                ),
              );
//          Navigator.of(context).pushNamed('/FullPageCard');
            },
          ),
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "",
                          style: kAdoptText,
                        ),
                        Text(
                          _petNameList[widget.getFavoriteIndex],
                          //"Name of the Dog!",
                          style: kAdoptText,
                        ),
                        Align(
                          alignment: Alignment(0.9, 2),
                          heightFactor: 0.7,
                          child: favFloatingActionButton(context),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          _petGenderList[widget.getFavoriteIndex],
                          //"Gender!",
                          style: kAdoptText,
                        ),
                        Text(
                          _petLocationList[widget.getFavoriteIndex],
                          //"Location!",
                          style: kAdoptText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  FloatingActionButton favFloatingActionButton(BuildContext context) {
    GlobalDataAccess pullData = GlobalDataAccess();

    return FloatingActionButton(
      heroTag: widget.customKey,
      elevation: 10.0,
      backgroundColor: onOff ? Colors.redAccent : Colors.redAccent,
      onPressed: () {
        setState(() {
          print("Button Tapped");
          onOff = !onOff;
          print("The index for fav list is");
          print(widget.getFavoriteIndex);
          onOff
              ? pullData.addFavoritePet(widget.getFavoriteIndex)
              : pullData.removeFavoritePet(widget.getFavoriteIndex);
          print("list of fav index");
          print(pullData.getFavIndexList());
//            Navigator.push(
//                context,
//                MaterialPageRoute(
//                builder: (context) =>
//            Favorites(
//              petImageFav: widget.petImage,
//              petNameFav: widget.petName,
//              petGenderFav: widget.petGender,
//              petLocationFav: widget.petLocation,
//              petAboutFav: widget.petAbout,
//              petContactFav: widget.petContact,
//              onOffChecker: onOff,
//            );
//                ),
//            );

//          Navigator.push(
//            context,
//            MaterialPageRoute(
//              builder: (context) => Favorites(
//                petImageFav: widget.petImage,
//                petNameFav: widget.petName,
//                petGenderFav: widget.petGender,
//                petLocationFav: widget.petLocation,
//                petAboutFav: widget.petAbout,
//                petContactFav: widget.petContact,
//                onOffChecker: onOff,
//              );
//            ),
//          );
        });
      },
      child: Icon(
        onOff ? Icons.favorite : Icons.favorite_border,
        size: 35.0,
//                  size: 40.0,
//                  color: onOff ? Colors.white : Colors.white,
      ),
    );
  }
}

//class AdoptCard extends StatelessWidget {
//
//  bool onOff = false;
//
//  AdoptCard(
//      {@required this.petImage,
//      @required this.petName,
//      @required this.petGender,
//      @required this.petLocation,
//      @required this.petAbout,
//      @required this.petContact,
//      this.onCustomTap});
//
//  final Image petImage;
//  final String petName;
//  final String petGender;
//  final String petLocation;
//  final String petAbout;
//  final String petContact;
//  final Function onCustomTap;
//
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      margin: EdgeInsets.all(10.0),
//      shape: null,
//      borderOnForeground: true,
//      elevation: 10.0,
//      child:Column(children: <Widget>[
//        InkWell(
//          splashColor: Colors.amber.withAlpha(30),
//          child: Column(
//            children: <Widget>[
//              Container(
//                child: petImage,
//              ),
//              Container(
//                margin: EdgeInsets.all(5.0),
//                child: Column(
//                  children: <Widget>[
//                    Text(
//                      petName,
//                      //"Name of the Dog!",
//                      style: kAdoptText,
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: <Widget>[
//                        Text(
//                          petGender,
//                          //"Gender!",
//                          style: kAdoptText,
//                        ),
//                        Text(
//                          petLocation,
//                          //"Location!",
//                          style: kAdoptText,
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),
//          onTap: () {
//            print("tapped");
//
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                builder: (context) => FullPageCard(
//                  petImageDisplay: petImage,
//                  petNameDisplay: petName,
//                  petGenderDisplay: petGender,
//                  petLocationDisplay: petLocation,
//                  petAboutDisplay: petAbout,
//                  petContactDisplay: petContact,
//                ),
//              ),
//            );
////          Navigator.of(context).pushNamed('/FullPageCard');
//          },
//        ),
//        Align(
//          alignment: Alignment(0.9, 1.0),
//          heightFactor: 0.5,
//          child: FloatingActionButton(
//            elevation: 10.0,
//            backgroundColor:
//            onOff ? Colors.lightGreenAccent : Colors.lightGreenAccent,
//            onPressed: () {
//              setState(() {
//                onOff = !onOff;
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                    builder: (context) => FavoritesPage(
//                      petImageFav: widget.petImageDisplay,
//                      petNameFav: widget.petNameDisplay,
//                      petGenderFav: widget.petGenderDisplay,
//                      petLocationFav: widget.petLocationDisplay,
//                      petAboutFav: widget.petAboutDisplay,
//                      petContactFav: widget.petContactDisplay,
//                      onOffChecker: onOff,
//                    ),
//                  ),
//                );
//              });
//            },
//            child: Icon(
//              Icons.favorite,
//              size: 40.0,
//              color: onOff ? Colors.red : Colors.white,
//            ),
//          ),
//        ),
//      ],),
//
//    );
//  }
//}
