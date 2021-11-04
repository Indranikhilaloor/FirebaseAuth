import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'login.dart';
import 'registration.dart';
class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 35,
            ),
            Container(
              height: 300,
              child: Image(
                image: AssetImage("assets/firstIllustration.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            RichText(text:
             TextSpan(
              text: 'Welcome to ',
              style: TextStyle(
                color: textColor,
                fontSize: 27,
                fontWeight: FontWeight.normal
              ),
              children:[
                TextSpan(
                  text: 'Jedi Travels',
                  style: TextStyle(
                    color: extraColor,
                    fontSize: 33,
                    fontWeight: FontWeight.w900
                  )
                )
              ]
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Best Hotel Booking App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: textColor
              ),

            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>login(),));

                },
                    style: ElevatedButton.styleFrom(primary: buttonColor),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: textColor,

                      ),
                    )
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>register(),));

                },
                    style:
                      ElevatedButton.styleFrom(primary: buttonColor),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              width: 180,
              child: SignInButton(Buttons.Google,text: 'Sign Up with Google', onPressed: (){})
            ),
          ],
        ),
      ),
    );
  }
}
