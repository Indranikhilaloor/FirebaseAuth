import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomePage extends StatefulWidget {
  final _auth=FirebaseAuth.instance;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Boome'),
        ],
      )

    );
  }
}
