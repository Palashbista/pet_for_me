import 'package:flutter/material.dart';
import 'package:pet_for_me/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text(
          'Welcome to PetForMe App',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
        ),
      ),
    );
  }
}

