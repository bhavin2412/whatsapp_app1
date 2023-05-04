import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_app1/utills/conts.dart';
import 'package:whatsapp_app1/view/home_screen.dart';
import 'package:whatsapp_app1/view/splash_screen.dart';
import 'package:whatsapp_app1/view/theme_changer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<ThemeChanger>(
        create: (_) => ThemeChanger(),
        child: Builder(
            builder: (BuildContext context) {
              final themeChanger = Provider.of<ThemeChanger>(context);
              return  MaterialApp(
                title: 'Whatsapp',
                home:  HomeScreen(),
                themeMode: themeChanger.themeMode,
                theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.teal,
                  textTheme: const TextTheme(
                    headline3: TextStyle(fontFamily: 'Bold', fontSize: 20.0,color: Colors.black ),
                    headline4: TextStyle(fontFamily: 'Bold', fontSize: 18.0,color: Color(0xff25292B) ),
                    headline5: TextStyle(fontFamily: Bold,fontSize: 16.0,color: Color(0xff25292B) ),
                    headline6: TextStyle(fontFamily: Bold, fontSize: 14.0,color: Color(0xff25292B)),
                    bodyText1: TextStyle(fontFamily: Regular, fontSize: 12.0, color: Color(0xff25292B)),
                    bodyText2: TextStyle(fontFamily: Regular, fontSize: 10.0, color:Color(0xff25292B)),
                  ),
                  iconTheme: IconThemeData(
                      color: Colors.grey.shade600
                  ),
                ),

                darkTheme: ThemeData(
                    brightness: Brightness.dark,
                    textTheme: const TextTheme(
                      displaySmall: TextStyle(fontFamily: 'Bold', fontSize: 20.0,color: Colors.white ),
                      headlineMedium: TextStyle(fontFamily: 'Bold', fontSize: 18.0,color: Colors.white ),
                      headlineSmall: TextStyle(fontFamily: Bold,fontSize: 16.0, color: Colors.white),
                      titleLarge: TextStyle(fontFamily: Bold, fontSize: 14.0,color: Colors.white),
                      bodyLarge: TextStyle(fontFamily: Regular, fontSize: 12.0, color: Colors.white),
                      bodyMedium: TextStyle(fontFamily: Regular, fontSize: 10.0,color: Colors.white),
                    ),
                    iconTheme: IconThemeData(
                        color: Colors.grey
                    )
                ),
                debugShowCheckedModeBanner: false,
              );

            })
    );
  }
}

