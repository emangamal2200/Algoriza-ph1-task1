import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_ph1_alg/components/myFormField.dart';
import 'package:task1_ph1_alg/components/myPhoneField.dart';
import 'package:task1_ph1_alg/components/mybutton.dart';
import 'package:task1_ph1_alg/components/mytext.dart';
import 'package:task1_ph1_alg/components/socialMediaButton.dart';
import 'package:task1_ph1_alg/layout/registerScreen.dart';

class logInScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'LogInScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 500,
                  child: Image.asset(
                    'assets/images/bg.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20.0),
                  child: myText(
                    text: 'Welcome to Fashion Daily',
                    fSize: 13.5,
                    fcolor: Color(0xff8d8d8d),
                    fW: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20.0),
                      child: myText(
                        text: 'Sign in',
                        fSize: 27,
                        fcolor: Color(0xff282828),
                        fW: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20.0),
                      child: Row(
                        children: [
                          myText(
                            text: 'Help',
                            fSize: 13.5,
                            fcolor: Color(0xff4487f8),
                            fW: FontWeight.w500,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.help,
                            color: Color(0xff4487f8),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),

                myPhoneField(),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                  child: myButton(
                    height: 40,
                    width: 400,
                    raduis: 5,
                    text: 'Sign In',
                    fSize: 15,
                    myFunc: (){},
                    myColor: Color(0xff3885fe),
                    textColor: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20 , end: 20),
                  child: Image.asset('assets/images/dv.PNG'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
                  child: socialMediaButton(),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(
                      text: 'Doesn‘t has any account?',
                      fSize: 15,
                      fcolor: Color(0xff68696d),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => registerScreen()));
                      },
                      child: myText(
                        text: 'Register here',
                        fSize: 15,
                        fcolor: Color(0xff3885fe),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: myText(
                    text: 'Use the application according to policy rules.Any',
                    fcolor: Color(0xff949497),
                    fSize: 13,
                    fW: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: myText(
                    text: 'kinds of violations will be subject to sanctions.',
                    fcolor: Color(0xff949497),
                    fSize: 13,
                    fW: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
