
import 'package:finalchat/screens/login_screen.dart';
import 'package:finalchat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = "WelcomeScreen";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;


  Duration duration = Duration(seconds: 1);

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: duration);
    // TODO: implement initState
    controller.forward();
    controller.addListener(() {
      print(controller.value);
      setState(() {});
    });
    animation =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);
    //  animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    animation.addListener(() {
      print(animation.value);
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    super.initState();
  }

  Widget text_Kit_type() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Agne',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText('Chat App'),
            //   TypewriterAnimatedText('Lets Start ,'),
            //   TypewriterAnimatedText('I miss you'),
            //    TypewriterAnimatedText('Do not test bugs out, design them out'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }

  Widget text_kit() {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText('Chat App'),
            TyperAnimatedText('Lets Start ,'),
            TyperAnimatedText('I miss you'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,

      //backgroundColor: Colors.yellow.withOpacity(controller.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
                // Text(
                //   "${(controller.value * 100).toInt()} Chat App",
                //   // 'Chat App',
                //   style: TextStyle(
                //       fontSize: 45.0,
                //       fontWeight: FontWeight.w900,
                //       color: Colors.white),
                // ),
                //   text_kit()
                text_Kit_type()
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        LoginScreen.id);
                    //Go to login screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        RegistrationScreen.id); //Go to registration screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
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
