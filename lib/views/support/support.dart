import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/const.dart';
import '../../utils/style.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/logo.png", color: darkBlueColor),
            const Gap(2),
            Text("Support", style: myTextStyle(color: darkBlueColor, fontSize: 24, fontWeight: FontWeight.w700)),
            const Gap(6),
            Text("Browse Support", style: myTextStyle1()),
            const Divider(color: lightGrayColor),
            const Gap(4),
            Text("Your Browser: ", style: myTextStyle(color: darkBlueColor, fontWeight: FontWeight.w700)),
            const Gap(4),
            Text(
              "For the most smooth and secure experience, ensure that you are running the latest version of a major browser.\n",
              style: myTextStyle(color: darkBlueColor, fontSize: 13),
            ),
            const Gap(2),
            Text(
              "We officially support at minimum the following versions of major browsers:\n"
                  "   Desktop:\n"
                  "       Google Chrome 72 and higher\n"
                  "       Safari 12.1 and higher\n"
                  "       Microsoft Edge 79 and higher\n"
                  "       Firefox 65 and higher\n"
                  "   Mobile:\n"
                  "     Android:\n"
                  "       Google Chrome 72 and higher\n"
                  "       Firefox 65 and higher\n"
                  "     Apple IOS:\n"
                  "       Safari - iOS 12.2 and higher\n"
                  "       Chrome - iOS 12.2 and higher\n"
                  "       Firefox - iOS 12.2 and higher\n"
                  "We strongly recommend using the latest version of the browsers listed on this page. If you do not use the latest version of a supported browser, or if you use a browser that is not listed above, our websites or some features may not work as you expect, or at all.",
              style: myTextStyle(color: blackColor, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
