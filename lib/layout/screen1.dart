import 'package:flutter/material.dart';

import '../components/mytext.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 10.0),
          child: Container(
            width: 300,
            height: 290,
            child: Image.asset(
              'assets/images/slide1.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        myText(
          text: 'Get food delivery to your',
          fSize: 27,
          fcolor: Color(0xff282828),
        ),
        myText(
          text: 'doorstep asap',
          fSize: 27,
          fcolor: Color(0xff282828),
        ),
        SizedBox(
          height: 11.0,
        ),
        myText(
          text: 'We have young and professional delivery',
          fSize: 15.5,
          fcolor: Color(0xff8d8d8d),
          fW: FontWeight.w500,
        ),
        SizedBox(
          height: 2.0,
        ),
        myText(
          text: 'team that will pring your food as soon as',
          fSize: 15.5,
          fcolor: Color(0xff8d8d8d),
          fW: FontWeight.w500,
        ),
        SizedBox(
          height: 2.0,
        ),
        myText(
          text: 'possible to your doorstep',
          fSize: 15.5,
          fcolor: Color(0xff8d8d8d),
          fW: FontWeight.w500,
        ),
      ],
    );
  }
}
