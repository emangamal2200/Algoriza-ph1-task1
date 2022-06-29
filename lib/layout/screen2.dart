import 'package:flutter/material.dart';
import '../components/mytext.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

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
              'assets/images/slide2.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        myText(
          text: 'Buy Any Food from your',
          fSize: 27,
          fcolor: Color(0xff282828),
        ),
        myText(
          text: 'favourite restaurant',
          fSize: 27,
          fcolor: Color(0xff282828),
        ),
        SizedBox(
          height: 11.0,
        ),
        myText(
          text: 'We are constantly adding your favourite',
          fSize: 15.5,
          fcolor: Color(0xff8d8d8d),
          fW: FontWeight.w500,
        ),
        SizedBox(
          height: 2.0,
        ),
        myText(
          text: 'restaurant throughout the territory and around',
          fSize: 15.5,
          fcolor: Color(0xff8d8d8d),
          fW: FontWeight.w500,
        ),
        SizedBox(
          height: 2.0,
        ),
        myText(
          text: 'your area carefully selected',
          fSize: 15.5,
          fcolor: Color(0xff8d8d8d),
          fW: FontWeight.w500,
        ),
      ],
    );
  }
}
