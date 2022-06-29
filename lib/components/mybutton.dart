import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? raduis;
  final String? text;
  final Color? myColor;
  final Color? textColor;
  final double? fSize;
  final VoidCallback? myFunc;
  final FontWeight? fontWeight;

  myButton({
    required this.height,
    required this.width,
    required this.raduis,
    required this.text,
    required this.fSize,
    required this.myFunc,
    this.myColor,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.bold

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis!),
        color: myColor,
      ),
      child: MaterialButton(
        onPressed: myFunc,
        child: Text(
          text!,
          style: TextStyle(
            fontWeight: fontWeight,
            color: textColor,
            fontSize: fSize ,
          ),
        ),
      ),
    );
  }
}
