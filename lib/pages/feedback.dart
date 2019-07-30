import 'package:flutter/material.dart';

class SendFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe: Feedback Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to Feedback Page',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
        ),
      ),
    );
  }
}
