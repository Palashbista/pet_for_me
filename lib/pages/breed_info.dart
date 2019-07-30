import 'package:flutter/material.dart';

class BreedInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe: Pets Available Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Breed info Page',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
        ),
      ),
    );
  }
}
