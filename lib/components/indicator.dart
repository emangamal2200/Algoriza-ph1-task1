import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int? positionIndex, currentIndex;

  const Indicator({this.currentIndex, this.positionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 18,
      decoration: BoxDecoration(
          border: Border.all(
            color:
                positionIndex == currentIndex ? Color(0xffe5bd85) : Color(0xffe8e8e7),
          ),
          color: positionIndex == currentIndex
              ? Color(0xffe5bd85)
              : Color(0xffe8e8e7),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
