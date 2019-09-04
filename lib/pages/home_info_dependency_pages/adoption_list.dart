import 'package:flutter/material.dart';

//import 'package:list_view/components/adopt_Card.dart';
import 'package:pet_for_me/components/home_info_dependency_components/adopt_Card.dart';
import 'package:pet_for_me/components/global_data_access.dart';
import 'package:pet_for_me/fetchHttpData.dart'as fetch;

//List<Image> _petImageList = [];
//List<String> _petNameList = [];
//List<String> _petGenderList = [];
//List<String> _petLocationList = [];
//List<String> _petAboutDisplayList = [];
//List<String> _petContactDisplayList = [];
//
//addInfo(Image addImage, String addName, String addGender, String addLocation,
//    String addAboutDisplay, addContactDisplay) {
//  _petImageList.add(addImage);
//  _petNameList.add(addName);
//  _petGenderList.add(addGender);
//  _petLocationList.add(addLocation);
//  _petAboutDisplayList.add(addAboutDisplay);
//  _petContactDisplayList.add(addContactDisplay);
//}

class AdoptionList extends StatefulWidget {
  @override
  _AdoptionListState createState() => _AdoptionListState();
}

class _AdoptionListState extends State<AdoptionList> {
  GlobalDataAccess pullData = GlobalDataAccess();
  List<int> _favoriteIndices;

  Widget customList(BuildContext context, int index) {
    List<Image> _petImageList = pullData.getImageListData();
    List<String> _petNameList = pullData.getNameListData();
    List<String> _petGenderList = pullData.getGenderListData();
    List<String> _petLocationList = pullData.getLocationListData();
    List<String> _petAboutDisplayList = pullData.getAboutListData();
    List<String> _petContactDisplayList = pullData.getContactListData();
    AdoptCard adoptCard;
    adoptCard = AdoptCard(
      petImage: _petImageList[index],
      petName: _petNameList[index],
      petGender: _petGenderList[index],
      petLocation: _petLocationList[index],
      petAbout: _petAboutDisplayList[index],
      petContact: _petContactDisplayList[index],
      getFavoriteIndex: index,
      favoriteStatus: _favoriteIndices.contains(index) ? true : false,
    );

    return adoptCard;
  }

  @override
  void initState() {
    GlobalDataAccess pullData = GlobalDataAccess();
    _favoriteIndices = GlobalDataAccess().getFavIndexList();
    if (pullData.getImageListData().isEmpty) {




//      fetch.test();
//      pullData.addInfo(
//
//          Image.network(
//            'https://cdn.pixabay.com/photo/2015/11/17/13/13/bulldog-1047518_1280.jpg',
//          ),
//          //Image.asset("assets/images/pug.jpg"),
//          "Rocky",
//          "Male",
//          "Columbus",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_1280.jpg"),
//          "Mocky",
//          "Female",
//          "Easton",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_1280.jpg"),
//          "Luna",
//          "Female",
//          "Dublin",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2019/07/01/18/16/dog-4310597_1280.jpg"),
//          "Tyson",
//          "Male",
//          "Beaumont",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2016/07/15/15/55/dachshund-1519374_1280.jpg"),
//          "Kale",
//          "Male",
//          "Beride City",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2014/08/21/14/51/pet-423398_1280.jpg"),
//          "Bolt",
//          "Male",
//          "Beride City",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2016/03/27/21/16/animal-1284307_1280.jpg"),
//          "Annabel",
//          "Female",
//          "random   City",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
//      pullData.addInfo(
//          Image.network("https://cdn.pixabay.com/photo/2014/05/03/01/04/puppy-336707_1280.jpg"),
//          "lab",
//          "Female",
//          "abc  City",
//          "Helo world. This is a dog . 12323 gasgsa I always wanted to get a  dog. Dogs are fun, Unlike cats, dogs are playful and friendly",
//          "Dublin, OH,43016"
//              "Email:adopt@gmail.com");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalDataAccess pullData = GlobalDataAccess();
    List<Image> _petImageList = pullData.getImageListData();
    return ListView.builder(
     //cacheExtent: MediaQuery.of(context).size.height * _petImageList.length,
      //cacheExtent: 1000.0,
      itemCount: _petImageList.length,
      itemBuilder: customList,
    );
  }
}
