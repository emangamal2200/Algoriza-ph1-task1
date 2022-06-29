import 'package:flutter/material.dart';

class socialMediaButton extends StatelessWidget {
  const socialMediaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(
            width: 1.0,
            color: Color(0xff3885fe),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 18,
              child: Image.asset('assets/images/google.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sign with by google',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color(0xff3885fe),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
