import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_app1/view/theme_changer.dart';



class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: AnimatedCrossFade(
              crossFadeState: Theme.of(context).brightness == Brightness.light
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://www.shutterstock.com/image-vector/man-icon-vector-260nw-1040084344.jpg',
                  )),
              secondChild: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://www.shutterstock.com/image-vector/man-icon-vector-260nw-1040084344.jpg',
                ),),
              duration: Duration(milliseconds: 200),
            ),
          ),

          RadioListTile<ThemeMode>(
            title: const Text('Light Mode'),
            groupValue: themeChanger.themeMode,
            value: ThemeMode.light,
            onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Dark Mode'),
            groupValue: themeChanger.themeMode,
            value: ThemeMode.dark,
            onChanged: themeChanger.setTheme,
          ),
        ],
      ),
    );
  }
}
