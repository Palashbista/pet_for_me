import 'package:flutter/material.dart';
import 'package:pet_for_me/components/custom_theme.dart';
import 'package:pet_for_me/components/themes.dart';

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

  void changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }
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
  bool isBright = false;
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
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Title Bar Color',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25.0),
                  ),
                  Switch(
                    value: isBright,
                    onChanged: (value) {
                      setState(() {
                        isBright = value;
                        print("Brightness change");
                        isBright
                            ? widget.changeTheme(context, MyThemeKeys.BRIGHTNESS)
                            : widget.changeTheme(context, MyThemeKeys.DARKNESS);
                        print(customThemeColor);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
              Row(
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
                            ? widget.changeTheme(context, MyThemeKeys.DARK)
                            : widget.changeTheme(context, MyThemeKeys.LIGHT);
                        print(customThemeColor);
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
