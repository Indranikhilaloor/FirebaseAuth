import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginout/HomePage.dart';
import 'constants.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _auth=FirebaseAuth.instance;
  String email='';
  String password='';



  @override
  Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Image(image: AssetImage('assets/thirdIllustration.jpg'),fit: BoxFit.contain,),
              height: 400,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email=value;
                //Do something with the user input.
              },
              decoration: InputDecoration(
                hintText: 'Enter your email',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password=value;
                //Do something with the user input.
              },
              decoration: InputDecoration(
                hintText: 'Enter your password',
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: textColor, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () async{
                    try{
                      final user= await _auth.signInWithEmailAndPassword(email: email, password: password);
                      if(user!=null){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                      }
                    }catch(e){
                      print(e);
                    }
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Login',
                    style: TextStyle(color: textColor,fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
