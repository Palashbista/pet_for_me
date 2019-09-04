import 'package:flutter/material.dart';

import 'package:pet_for_me/jsondata.dart';
import 'package:pet_for_me/fetchHttpData.dart';

class GlobalDataAccess {
  static GlobalDataAccess _instance = GlobalDataAccess._internal();

  GlobalDataAccess._internal() {
    pullJsonList().then((data) {
      _JSONDataList = data;
      for(JsonData item in data){
        _petNameList.add(item.name);
        _petContactDisplayList.add(item.contact);
        _petAboutDisplayList.add(item.about);
        _petGenderList.add(item.gender);
        _petLocationList.add(item.location);
        _petImageList.add(Image.network(item.imageUrl));
      }
    });
  }

  factory GlobalDataAccess() {
    return _instance;
  }

  List<JsonData> _JSONDataList;
  List<Image> _petImageList = [];
  List<String> _petNameList = [];
  List<String> _petGenderList = [];
  List<String> _petLocationList = [];
  List<String> _petAboutDisplayList = [];
  List<String> _petContactDisplayList = [];
  List<int> _favoritesPetIndexList = [];


  Future<List<JsonData>> pullJsonList() async {
    return await fetchPost();
  }

  List<Image> getImageListData() {
    return _petImageList;
  }

  List<String> getNameListData() {
    return _petNameList;
  }

  List<String> getGenderListData() {
    return _petGenderList;
  }

  List<String> getLocationListData() {
    return _petLocationList;
  }

  List<String> getAboutListData() {
    return _petAboutDisplayList;
  }

  List<String> getContactListData() {
    return _petContactDisplayList;
  }

  List<int> getFavIndexList() {
    return _favoritesPetIndexList;
  }

  getImageListDataLength() {
    _petImageList.length;
  }

  getFavoritesPetIndexListLength() {
    _favoritesPetIndexList.length;
  }

  addInfo(Image addImage, String addName, String addGender, String addLocation,
      String addAboutDisplay, addContactDisplay) {
    _petImageList.add(addImage);
    _petNameList.add(addName);
    _petGenderList.add(addGender);
    _petLocationList.add(addLocation);
    _petAboutDisplayList.add(addAboutDisplay);
    _petContactDisplayList.add(addContactDisplay);
  }

  removeInfo(Image addImage, String addName, String addGender,
      String addLocation, String addAboutDisplay, addContactDisplay) {
    _petImageList.remove(addImage);
    _petNameList.remove(addName);
    _petGenderList.remove(addGender);
    _petLocationList.remove(addLocation);
    _petAboutDisplayList.remove(addAboutDisplay);
    _petContactDisplayList.remove(addContactDisplay);
  }

  addFavoritePet(int favoritePetIndex) {
    _favoritesPetIndexList.add(favoritePetIndex);
  }

  removeFavoritePet(int favoritePetIndex) {
    _favoritesPetIndexList.remove(favoritePetIndex);
  }

  List<int> get favoritesPetIndexList => _favoritesPetIndexList;
}



