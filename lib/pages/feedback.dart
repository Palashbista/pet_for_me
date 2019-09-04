import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FeedBack Page"),
      ),
      body: FeedbackForm(),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Name"),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Text Field is empty';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Email"),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Email is empty';
                      }
                      if (value.contains('@') != true) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Feedback"),
                  Card(
                    elevation: 3.0,
                    child: TextFormField(
                      maxLines: 8,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Feedback is empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState.validate()) {
                            _launchURL('palashbista@gmail.com','subject','body');
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Thank you for your feedback!'),
                              ),
                            );
                          }
                        });
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchURL(String toMailId, String subject, String body) async {
    //var url='https://mail.google.com/mail/mu/mp/47/#co/';
    var url='https://mail.google.com/mail/u/0/?fs=1&source=$toMailId&su=$subject&body=$body';
    //var url='https://mail.google.com/mail/?view=cm&fs=1&to=$toMailId&su=$subject&body=$body';
    //var url='mailto:$toMailId&subject=$subject&body=$body';
   // var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
