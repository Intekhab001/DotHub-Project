import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:learning_firebase/home_page.dart';
import 'package:learning_firebase/main_page.dart';
import 'login_page.dart';
import 'main_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
      //theme data modification
      ThemeData(
        primarySwatch: Colors.indigo,
        ///Custom TextField
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)
          ),
        ),


        //Custom button
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(

            backgroundColor: Colors.blue.withOpacity(0.8),
            shadowColor: Colors.white,
            primary: Colors.white,
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
            // fontSize: 20,
            )
          )
        ),
      ),

      home: MainPage(),
    );
  }
}
