// footer widget
import 'package:athenacapm/responsive.dart';
import 'package:athenacapm/routing/route_name.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget FooterWidget(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return SizedBox(
    height: size.height * 0.30,
    child: Center(
      child: Flexible(
        child: Container(
          decoration: const BoxDecoration(color: blackColor),
          child: Padding(
            padding: !Responsive.isMobile(context)?EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.height * 0.26,
            ): const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: Column(
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const SizedBox(),
                                  const SizedBox(),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/logo.png",
                                        color: whiteColor,
                                      ),
                                      const Gap(14),
                                      Text(
                                        "ACM",
                                        style: GoogleFonts.inknutAntiqua(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: whiteColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Gap(10),
                            const Divider(
                              color: whiteColor,
                              indent: 10,
                              endIndent: 10,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                      Get.toNamed(AppRouteConstants.PrivacyPolicyRoute);
                                      },
                                      child: Text("Privacy Policy",
                                          style: myTextStyle(
                                              color: whiteColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200)),
                                    ),
                                    const Gap(6),
                                    Container(
                                      width: 1,
                                      height: 16,
                                      decoration:
                                          const BoxDecoration(color: whiteColor),
                                    ),
                                    const Gap(6),
                                    InkWell(
                                      onTap: () {
                                       Get.toNamed(AppRouteConstants.SupportRoute);
                                      },
                                      child: Text("Support",
                                          style: myTextStyle(
                                              color: whiteColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200)),
                                    ),
                                  ],
                                ),
                                Text(
                                  "© 2024 Athena Capital Managment LLC. All Rights Reserved.",
                                  style: myTextStyle(
                                      color: whiteColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200),
                                )
                              ],
                            ),
                            const Gap(10),
                          !Responsive.isMobile(context)?  Column(
                              children: [
                                Center(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "The materials on this website are for illustration and discussion purposes only and do not constitute an offering. An offering may be made only by delivery of a confidential offering memorandum to appropriate investors. PAST PERFORMANCE IS NO GUARANTEE OF FUTURE RESULTS.",
                                      style: myTextStyle(
                                          color: whiteColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w200),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "www.athenacapm.com is the only official Athena Capital Management LLC website. Neither Athena Capital nor any of its affiliates operates any other publicly available website. Other websites purporting to be associated with our firm or our funds are not legitimate.",
                                    style: myTextStyle(
                                        color: whiteColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w200),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ): Column(
                              children: [
                                Center(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "The materials on this website are for illustration and discussion purposes only and do not constitute an offering. An offering may be made only by delivery of a confidential offering memorandum to appropriate investors. PAST PERFORMANCE IS NO GUARANTEE OF FUTURE RESULTS.",
                                      style: myTextStyle(
                                          color: whiteColor,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w200),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "www.athenacapm.com is the only official Athena Capital Management LLC website. Neither Athena Capital nor any of its affiliates operates any other publicly available website. Other websites purporting to be associated with our firm or our funds are not legitimate.",
                                    style: myTextStyle(
                                        color: whiteColor,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w200),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
      ),
    ),
              );

}
