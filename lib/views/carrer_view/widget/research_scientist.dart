import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';



class ResearchScientistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 180.0, vertical: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Research Scientist",
                      style: myTextStyle(
                        color: darkBlueColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 46,
                      ),
                    ),
                    Text(
                      "Boston, MA",
                      style: myTextStyle(
                        color: darkBlueColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 180.0, vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Responsibilities",
                    style: myTextStyle(color: darkBlueColor),
                  ),
                  Text(
                    "      .  Use state-of-the-art techniques from data science, statistics, and applied mathematics to develop trading algorithms and mathematical models of the financial markets",
                    style: myTextStyle(color: blackColor, fontSize: 12),
                  ),

                  Gap(6),
                  Text(
                    "Skills, Qualifications, and Experience",
                    style: myTextStyle(color: darkBlueColor),
                  ),
                  Text(
                    "      .An advanced degree in computer science, mathematics, physics, statistics, or a related field\n"
                        "      . A track record of exceptional intellectual achievement\n"
                        "      . A demonstrated capacity to do first-class research\n"
                        "      . Strong computer programming and system design skills\n"
                    ,
                    style: myTextStyle(color: blackColor, fontSize: 12),
                  ),
                  Gap(6),
                  Divider(
                    color: lightGrayColor,
                  ),
                  Gap(6),
                  Row(
                    children: [
                      Text(
                        "Salary Range: ",
                        style: myTextStyle(color: darkBlueColor, fontSize: 12),
                      ),
                      Text(
                        "\$129,000 - \$224,000",
                        style: myTextStyle(color: lightBlack, fontSize: 12),
                      ),
                    ],
                  ),
                  Text(
                    "Explore Benefit >",
                    style: myTextStyle(color: Color(0xff085FB1), fontSize: 12),
                  ),
                  Gap(8),
                  ElevatedButton(
                    onPressed: () {
                      // Handle submit button tap
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: darkBlueColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Text("Apply Now", style: myTextStyle(color: Colors.white)),
                  ),
                  Gap(6),
                  Text(
                    "No telephone inquiries, please.",
                    style: myTextStyle(color: lightBlack, fontSize: 9),
                  ),
                  Text(
                    "Athena Capital Management is an equal opportunity employer.",
                    style: myTextStyle(color: lightBlack, fontSize: 9),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
