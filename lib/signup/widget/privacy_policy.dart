import 'package:flutter/material.dart';
import 'package:swapco/constants/const_color.dart';
import 'package:swapco/constants/constants.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(constString.privacy,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: textColor,
            )),

        Row(
          children: [
            GestureDetector(
              onTap: () async {},
              child: Text(
                constString.privacy2,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: primaryColor1),
              ),
            ),
            const SizedBox(
              width: 4,
            ),

            Text(
              constString.privacy3,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            const SizedBox(
              width: 4,
            ),

            GestureDetector(
              onTap: () async {},
              child: Text(
                constString.privacy1,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: primaryColor1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
