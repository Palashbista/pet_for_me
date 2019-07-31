import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe: Settings Page'),
      ),
      body: CustomSetting(),
    );
  }

  CustomSetting CS = CustomSetting();

  Color getThemeColor() {
    return CS.getThemeColor();
  }
}

class CustomSetting extends StatefulWidget {
  @override
  CustomSettingState createState() => CustomSettingState();

  CustomSettingState CusC = CustomSettingState();

  Color getThemeColor() {
    // print("is working");
    //  print(CusC.customThemeColor);
    return CusC.customThemeColor;
  }
}

class CustomSettingState extends State<CustomSetting> {
  bool isSwitched = false;
  Color customThemeColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: Text(
            'Welcome to Settings Page',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0),
          ),
        ),
        Container(
          margin: EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Theme Change',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25.0),
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print("color change");
                    isSwitched
                        ? customThemeColor = Colors.pink
                        : customThemeColor = Colors.black;
                    print(customThemeColor);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
