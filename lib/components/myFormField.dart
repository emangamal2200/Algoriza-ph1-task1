import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_ph1_alg/components/mytext.dart';

class myFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function(String?)? onSave;
  final String? Function(String?)? validator;
  final bool hide;
  final Icon? myIcon;

  myFormField({
    this.text = '',
    this.hint = '',
    this.onSave,
    this.validator,
    this.hide = false,
    this.myIcon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myText(
              text: text,
              fSize: 14,
              fcolor: Color(0xff6f7177),
              fW: FontWeight.w500,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50,
              child: TextFormField(
                obscureText: hide,
                onSaved: onSave,
                validator: (value) {
                  if (value!.isEmpty) {
                    return _errorMessage(hint);
                  }
                  return '';
                },
                decoration: InputDecoration(
                  suffixIcon: myIcon,
                  hintText: hint,
                  hintStyle: TextStyle(color: Color(0xffcac9cd),fontSize: 13),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide( color: Color(0xffcac9cd),),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: BorderSide( color: Colors.black),)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String _errorMessage(String str) {
    switch (hint) {
      case 'Eg. example@email.com':
        return 'the email field is empty !';
      case 'Eg. 812345678':
        return 'the phone field is empty !';
      case '••••••••••':
        return 'the password field is empty !';
    }
    return '0';
  }
}
