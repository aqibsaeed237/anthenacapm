import 'package:flutter/material.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:athenacapm/responsive.dart';
import 'package:gap/gap.dart';

Widget HomeView(BuildContext context) {
  return Flexible(
    // Set flex to 6 to occupy 60% of the available space
    child: Column(
      children: [
        SizedBox(
          height: 120,
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                color: darkBlueColor,
              ),
              child: Padding(
                padding: !Responsive.isMobile(context)
                    ? const EdgeInsets.symmetric(horizontal: 200)
                    : const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Athena Capital Management is a quantitative investment management firm, dedicated to producing exceptional returns for its investors by strictly adhering to mathematical and statistical methods.",
                      style: myTextStyle(
                        color: whiteColor,
                        fontSize: !Responsive.isMobile(context) ? 16 : 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          child: Center(
            child: Container(
              decoration: const BoxDecoration(color: whiteColor),
              child: Padding(
                padding: !Responsive.isMobile(context)
                    ? const EdgeInsets.only(
                        left: 100,
                        right: 100,
                        top: 50,
                        bottom: 30,
                      )
                    : const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: !Responsive.isMobile(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dubai",
                                  style: myTextStyle(
                                    color: darkBlueColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Gap(4),
                                Text(
                                  "Athena Capital Management LLC",
                                  style: myTextStyle(
                                    color: darkBlueColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "P.O. Box 474012",
                                  style: myTextStyle(
                                    color: lightGrayColor,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "+971 4 281 0801",
                                  style: myTextStyle(
                                    color: lightGrayColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(30),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Boston",
                                  style: myTextStyle(
                                    color: darkBlueColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Gap(2),
                                Text(
                                  "Athena Capital Holdings",
                                  style: myTextStyle(
                                    color: darkBlueColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                 
                                  "Athena Institutional Management LLC",
                                   
                                  style: myTextStyle(
                                    color: darkBlueColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "P.O. Box 02155",
                                  style: myTextStyle(
                                    color: lightGrayColor,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  "+1 617 261 1003",
                                  style: myTextStyle(
                                    color: lightGrayColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Dubai",
                                style: myTextStyle(
                                  color: darkBlueColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Gap(4),
                              Text(
                                "Athena Capital Management LLC",
                                style: myTextStyle(
                                  color: darkBlueColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "P.O. Box 474012",
                                style: myTextStyle(
                                  color: lightGrayColor,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "+971 4 281 0801",
                                style: myTextStyle(
                                  color: lightGrayColor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const Gap(30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Boston",
                                style: myTextStyle(
                                  color: darkBlueColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Gap(4),
                              Text(
                                "Athena Capital Holdings",
                                style: myTextStyle(
                                  color: darkBlueColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Athena Institutional Management LLC",
                                style: myTextStyle(
                                  color: darkBlueColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "P.O. Box 02155",
                                style: myTextStyle(
                                  color: lightGrayColor,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "+1 617 261 1003",
                                style: myTextStyle(
                                  color: lightGrayColor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
