import 'package:flutter/material.dart';


// DrawerListTile is a custom ListTile Widget that displays the individual list item on the drawer section
class DrawerListTile extends StatelessWidget {
  DrawerListTile(
      {@required this.drawerListText, @required this.drawerListIcons, @required this.drawerListOnTap});

  final String drawerListText;
  final IconData drawerListIcons;
  final Function drawerListOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drawerListText),
      leading: new Icon(drawerListIcons),
      onTap:drawerListOnTap,
    );
  }
}