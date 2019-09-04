import 'package:flutter/material.dart';
import 'package:pet_for_me/components/constants.dart';
import 'package:pet_for_me/components/global_data_access.dart';
import 'home_info_dependency_pages/full_page_adopt_card.dart';

//class Favorites extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('PetForMe: Favorites Page'),
//      ),
//      body: Center(
//        child: Text(
//          'Welcome to Favorites Page',
//          textAlign: TextAlign.center,
//          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
//        ),
//      ),
//    );
//  }
//}
//List<Image> _petImageFavList = [];
//List<String> _petNameFavList = [];
//List<String> _petGenderFavList = [];
//List<String> _petLocationFavList = [];
//List<String> _petAboutDisplayFavList = [];
//List<String> _petContactDisplayFavList = [];
//
//addInfoFav(Image addImage, String addName, String addGender, String addLocation,
//    String addAboutDisplay, addContactDisplay) {
//  _petImageFavList.add(addImage);
//  _petNameFavList.add(addName);
//  _petGenderFavList.add(addGender);
//  _petLocationFavList.add(addLocation);
//  _petAboutDisplayFavList.add(addAboutDisplay);
//  _petContactDisplayFavList.add(addContactDisplay);
//}
//
//deleteInfoFav(Image addImage, String addName, String addGender,
//    String addLocation, String addAboutDisplay, addContactDisplay) {
//  _petImageFavList.remove(addImage);
//  _petNameFavList.remove(addName);
//  _petGenderFavList.remove(addGender);
//  _petLocationFavList.remove(addLocation);
//  _petAboutDisplayFavList.remove(addAboutDisplay);
//  _petContactDisplayFavList.remove(addContactDisplay);
//}

class Favorites extends StatefulWidget {


  Favorites({
    Key key,
    this.petImageFav,
    this.petNameFav,
    this.petGenderFav,
    this.petLocationFav,
    this.petAboutFav,
    this.petContactFav,
    this.onOffChecker,
  }) : super(key: key);

  final Image petImageFav;
  final String petNameFav;
  final String petGenderFav;
  final String petLocationFav;
  final String petAboutFav;
  final String petContactFav;
  final bool onOffChecker;

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {

  GlobalDataAccess pullData = GlobalDataAccess();


  Widget customFavList(BuildContext context, int index) {

    List<Image> _petImageList = pullData.getImageListData();
    List<String> _petNameList = pullData.getNameListData();
    List<String> _petGenderList = pullData.getGenderListData();
    List<String> _petLocationList = pullData.getLocationListData();
    List<String> _petAboutDisplayList = pullData.getAboutListData();
    List<String> _petContactDisplayList = pullData.getContactListData();

    List<int> _petFavIndexList = pullData.getFavIndexList();

    return Column(
      children: <Widget>[
        Card(
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
                      child: _petImageList[_petFavIndexList[index]],
                    ),
                  ],
                ),
                onTap: () {
                  print(" Card tapped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullPageAdoptCard(
                        petImageDisplay: _petImageList[_petFavIndexList[index]],
                        petNameDisplay: _petNameList[_petFavIndexList[index]],
                        petGenderDisplay: _petGenderList[_petFavIndexList[index]],
                        petLocationDisplay:_petLocationList[_petFavIndexList[index]],
                        petAboutDisplay: _petAboutDisplayList[_petFavIndexList[index]],
                        petContactDisplay: _petContactDisplayList[_petFavIndexList[index]],
                      ),
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
                              _petNameList[_petFavIndexList[index]],
                              //"Name of the Dog!",
                              style: kAdoptText,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              _petGenderList[_petFavIndexList[index]],
                              //"Gender!",
                              style: kAdoptText,
                            ),
                            Text(
                              _petLocationList[_petFavIndexList[index]],
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
        ),
      ],
    );
  }

  @override
//  void initState() {
//    super.initState();
//    print("CHECKER!!!!!!!!!!!!");
//    print(widget.onOffChecker);
//    print(_petNameFavList);
//
//    if (widget.onOffChecker == true) {
//      print("checker error?");
//      print(widget.petNameFav);
//      addInfoFav(
//        widget.petImageFav,
//        widget.petNameFav,
//        widget.petGenderFav,
//        widget.petLocationFav,
//        widget.petAboutFav,
//        widget.petContactFav,
//      );
//    } else {
//      deleteInfoFav(
//        widget.petImageFav,
//        widget.petNameFav,
//        widget.petGenderFav,
//        widget.petLocationFav,
//        widget.petAboutFav,
//        widget.petContactFav,
//      );
//    }
//  }

  @override
  Widget build(BuildContext context) {

    GlobalDataAccess pullData = GlobalDataAccess();

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Favorities Page"),
      ),
      body: pullData.getFavIndexList().isNotEmpty
          ? ListView.builder(
              itemCount: pullData.getFavIndexList().length,
              itemBuilder: customFavList,
            )
          : Container(
              child: Center(
                child: Text(
                  "No  Favorite items. Please Add to Favorites from the home page by clicking the favorite icon ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
    );
  }
}
