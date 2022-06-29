import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth_pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      // StreamBuilder(
      //
      //   builder: (context, userSnapShot){
      //     if(userSnapShot.hasData){
      //       return MyHome();
      //     }
      //     else{
      //       return SignupPage();
      //     }
      //   },
      // ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
      ),
    );
  }
}
