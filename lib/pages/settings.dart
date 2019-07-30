import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe: Settings Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Settings Page',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
        ),
      ),
    );
  }
}
