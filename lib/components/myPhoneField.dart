import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task1_ph1_alg/components/mytext.dart';

class myPhoneField extends StatelessWidget {
  const myPhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start:20.0 , end: 20.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            myText(
              text: 'Phone Number',
              fSize: 14,
              fcolor: Color(0xff6f7177),
              fW: FontWeight.w500,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 70,
              child: IntlPhoneField(
                decoration: InputDecoration(
                  hintText: 'Eg. 812345678',
                  hintStyle: TextStyle(
                    color: Color(0xffcac9cd),
                    fontSize: 13.0
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide( color: Color(0xffcac9cd),),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide( color: Colors.black,),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide( color: Colors.red,),
                  ),
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
