import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_ph1_alg/components/mybutton.dart';
import 'package:task1_ph1_alg/components/mytext.dart';
import 'package:task1_ph1_alg/layout/loginScreen.dart';
import 'package:task1_ph1_alg/layout/registerScreen.dart';
import 'package:task1_ph1_alg/layout/screen1.dart';
import 'package:task1_ph1_alg/layout/screen2.dart';
import 'package:task1_ph1_alg/layout/screen3.dart';

import '../components/indicator.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({Key? key}) : super(key: key);

  @override
  _onBoardScreenState createState() => _onBoardScreenState();
}

class _onBoardScreenState extends State<onBoardScreen> {
  PageController? _pageController;
  int currentIndex = 0;
  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(top: 10.0, end: 18.0),
                child: myButton(
                  height: 45,
                  width: 70,
                  raduis: 20.0,
                  text: 'Skip',
                  fSize: 15.0,
                  myFunc: (){
                    setState(() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => logInScreen()));
                    });
                  },
                  myColor: Color(0xfffaf2e7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10),
              child: Container(
                width: 130,
                height: 40,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 480,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: onChangedFunction,
                    children: [
                      Screen1(),
                      Screen2(),
                      Screen3()
                    ],
                  ),
                  Positioned(
                    top: 465,
                    left: 152,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Indicator(
                          positionIndex: 0,
                          currentIndex: currentIndex,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Indicator(
                          positionIndex: 1,
                          currentIndex: currentIndex,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Indicator(
                          positionIndex: 2,
                          currentIndex: currentIndex,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            myButton(
              height: 50,
              width: 360,
              raduis: 10,
              text: 'Get Started',
              fSize: 16,
              myFunc: (){
                setState(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => registerScreen()));
                });
              },
              textColor: Colors.white,
              myColor: Color(0xff50afab),
            ),
            SizedBox(
              height: 17.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myText(
                  text: 'Dont’t have an account?',
                  fSize: 17,
                  fW: FontWeight.w500,
                ),
                SizedBox(
                  width: 5.0,
                ),
                GestureDetector(
                  child: myText(
                    text: 'Sign Up',
                    fSize: 17,
                    fcolor: Color(0xff50afab),
                    fW: FontWeight.w500,
                  ),
                  onTap: (){
                    setState(() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => registerScreen()));
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
