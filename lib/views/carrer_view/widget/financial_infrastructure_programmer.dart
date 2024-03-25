import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../responsive.dart';
import '../../home_page/widget/footer_widget.dart';



class FinancialInfrastructureProgrammerView extends StatelessWidget {
  const FinancialInfrastructureProgrammerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                    ),
                    child: Padding(
                      padding: Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40, vertical:4 ): EdgeInsets.symmetric(horizontal: 180.0, vertical: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Financial Infrastructure Programmer",
                            style: myTextStyle(
                              color: darkBlueColor,
                              fontWeight: FontWeight.w700,
                              fontSize: Responsive.isMobile(context) ?26: 30,
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
                    padding: Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40, vertical:4 ): EdgeInsets.symmetric(horizontal: 180.0, vertical: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Responsibilities",
                          style: myTextStyle(color: darkBlueColor),
                        ),
                        Text(
                          "      . Develop and support applications for all aspects of fund administration in a modern financial services organization, including fund accounting, risk reporting, margin management, tax reporting, treasury, and investor relations",
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        Text(
                          "      . Prioritize automation to meet processing requirements in a Linux/Unix environment using Java",
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        const Gap(6),
                        Text(
                          "Skills, Qualifications, and Experience",
                          style: myTextStyle(color: darkBlueColor),
                        ),
                        Text(
                          "      . A degree in computer science, mathematics, physics, statistics, or a related field\n"
                              "      . An outstanding academic record\n"
                              "      . Strong analytical and programming skills\n"
                              "      . Experience in Java/Kotlin and PostgreSQL databases\n"
                              "      . Experience in Advent Geneva or SWIFT (considered a plus)",
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        const Gap(6),
                        const Divider(
                          color: lightGrayColor,
                        ),
                        const Gap(6),
                        Row(
                          children: [
                            Text(
                              "Salary Range: ",
                              style: myTextStyle(color: darkBlueColor, fontSize: 12),
                            ),
                            Text(
                              " \$132,000 - \$198,000",
                              style: myTextStyle(color: lightBlack, fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          "Explore Benefit >",
                          style: myTextStyle(color: const Color(0xff085FB1), fontSize: 12),
                        ),
                        const Gap(8),
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
                        const Gap(6),
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
          ),
          FooterWidget(context),
        ],
      ),
    );
  }
}
