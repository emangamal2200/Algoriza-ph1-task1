import 'package:flutter/material.dart';

class myText extends StatelessWidget {
 final String? text;
 final double? fSize ;
 final Color? fcolor;
 final FontWeight? fW;
 myText({
   this.text,
   this.fSize,
   this.fcolor = Colors.black,
   this.fW = FontWeight.bold
});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fSize,
        fontWeight: fW,
        color: fcolor,
      ),
    );
  }
}
