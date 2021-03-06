import 'package:flutter/material.dart';
import 'constants.dart';
import 'start.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          primaryColor: background
      ),
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
