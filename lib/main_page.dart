import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:learning_firebase/login_page.dart';
import 'package:learning_firebase/screens/home/home_screen.dart';

import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              ///User is signed in
              return
              HomeScreen();/*ProfileScreen(
                providerConfigs: [
                  EmailProviderConfiguration(),
                ],
              );*/
              // return HomePage();
            } else {
              /// User is not signed in
              return SignInScreen(
                providerConfigs: [
                  EmailProviderConfiguration(),
                ],


                //Header Builder
                headerBuilder: (context, constraints, _){
                  return Padding(
                      padding: EdgeInsets.all(10.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset("assets/dothub.png"),
                      // Icon(Icons.android_outlined, size: 180, color: Colors.greenAccent,),

                      ),
                    );
                },



                  //Subtitle builder
                subtitleBuilder: (context, action){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      action == AuthAction.signIn
                          ?"Welcome to DotHub! Please sign in"
                          :"Welcome to DotHub! Please create accout", style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  );
                },

                //Footer Builder
                footerBuilder: (context, _){
                  return Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text("By signing in, you agree to our terms and conditions",
                    style: TextStyle(color: Colors.grey),
                    ),
                  );
              },

              );
            }
          }
      ),

    );



  }
}


