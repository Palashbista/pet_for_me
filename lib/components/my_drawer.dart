import 'package:flutter/material.dart';
import 'constants.dart';
import 'drawer_list_tile.dart';

class MyDrawer extends StatelessWidget {

  final ValueChanged<String> updateValue;

  const MyDrawer({Key key, @required this.updateValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Welcome to PetForMe',
                style: drawerTextStyle,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/pet_sticker.jpg'),
              ),
            ),
          ),
          //Custom ListTile for items in the ListView of the drawer
          DrawerListTile(
            drawerListText: 'Pets Available',
            drawerListIcons: Icons.pets,
            drawerListOnTap: () {
              Navigator.of(context).pushNamed("/HomePage");
            },
          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'Breed Info',
            drawerListIcons: Icons.label,
            drawerListOnTap: () {
              Navigator.of(context).pushNamed('/BreedInfo');
            },
          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'Favorites',
            drawerListIcons: Icons.add_a_photo,
            drawerListOnTap: () {
              if (updateValue != null) {
                print("Favorite list");
              }
              Navigator.of(context).pushNamed("/Favorites");
            },
          ),
//          Divider(),
//          DrawerListTile(
//            drawerListText: 'Available vets',
//            drawerListIcons: Icons.dock,
//            drawerListOnTap: () {
//              Navigator.of(context).pushNamed("/VetsAvailable");
//            },
//          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'Trivia Quiz',
            drawerListIcons: Icons.print,
            drawerListOnTap: () {
              Navigator.of(context).pushNamed("/TriviaQuiz");
            },
          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'About',
            drawerListIcons: Icons.info,
            drawerListOnTap: () {
              Navigator.of(context).pushNamed("/About");
            },
          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'Leave a Feedback',
            drawerListIcons: Icons.feedback,
            drawerListOnTap: () {
              Navigator.of(context).pushNamed("/SendFeedback");
            },
          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'Settings',
            drawerListIcons: Icons.settings,
            drawerListOnTap: () {
              Navigator.of(context).pushNamed("/Settings");
            },
          ),
          Divider(),
          DrawerListTile(
            drawerListText: 'Close',
            drawerListIcons: Icons.cancel,
            drawerListOnTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
