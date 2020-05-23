import 'package:cocaapp/authservice.dart';
import 'package:cocaapp/util/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(25, 25, 25, 1)));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        backgroundColor: BACKGROUND_COLOR,
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        appBarTheme: AppBarTheme(color: BACKGROUND_COLOR),
      ),
      home: AuthService().handleAuth(),
      debugShowCheckedModeBanner: false,
    );
  }
}
