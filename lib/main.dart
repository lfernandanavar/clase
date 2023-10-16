import 'package:flutter/material.dart';
import 'package:pmsn2023/assets/global_values.dart';
import 'package:pmsn2023/assets/styles_app.dart';
import 'package:pmsn2023/routes.dart';
import 'package:pmsn2023/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: GlobalValues.flagTheme,
      builder: (context, value, _) {
        return MaterialApp(
          home: const LoginScreen(),
          routes: getRoutes(),
          theme: value ? StylesApp.lightTheme(context) : StylesApp.darkTheme(context)
          /*routes: {
            '/dash' : (BuildContext context) => LoginScreen()
          },*/
        );
      }
    );
  }
}