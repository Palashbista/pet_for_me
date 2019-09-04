import 'package:flutter/material.dart';
import 'package:pet_for_me/components/my_drawer.dart';
import 'package:pet_for_me/components/themes.dart';
import 'package:pet_for_me/components/custom_theme.dart';
import 'home_info_dependency_pages/adoption_list.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe'),
      ),
      drawer: MyDrawer(),
      body: AdoptionList(),
    );
  }
}

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('PetForMe'),
//      ),
//      drawer: MyDrawer(),
//      body: Center(
//        child: Text(
//          'Welcome to PetForMe App',
//          textAlign: TextAlign.center,
//          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
//        ),
//      ),
//    );
//  }
//}

