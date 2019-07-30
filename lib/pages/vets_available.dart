import 'package:flutter/material.dart';

class VetsAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe: Vet Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Vet Page',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
        ),
      ),
    );
  }
}
