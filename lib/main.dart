import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:silauto_cottage/navigation/home_page.dart';
import 'package:silauto_cottage/navigation/navpage.dart';
import 'package:silauto_cottage/screens/login_screen.dart';
import 'package:silauto_cottage/screens/splash.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: SplashScreen(),
    );
  }
}
