import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:athenacapm/views/home_page/widget/footer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../responsive.dart';



class SystemAdministratorView extends StatelessWidget {
  const SystemAdministratorView({super.key});

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
                      padding: Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40): EdgeInsets.symmetric(horizontal: 180.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Systems Administrator",
                            style: myTextStyle(
                              color: darkBlueColor,
                              fontWeight: FontWeight.w700,
                              fontSize: Responsive.isMobile(context) ? 26: 46,
                            ),
                          ),
                          Text(
                            "Dubai, UAE",
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
                    padding: Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40 , vertical: 4): EdgeInsets.symmetric(horizontal: 180.0, vertical: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Responsibilities",
                          style: myTextStyle(color: darkBlueColor),
                        ),
                        Text(
                          "      .  Among other responsibilities, deploy, support, and troubleshoot the the Linux server and desktop infrastructure; document the IT infrastructure, policies, and procedures; and perform general user support",
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        const Text("      .  Participate in after-hours work and an on-call rotation"),
            
                        const Gap(6),
                        Text(
                          "Skills, Qualifications, and Experience",
                          style: myTextStyle(color: darkBlueColor),
                        ),
                        Text(
                          "      . A degree in a technical field\n"
                              "      . Extensive experience designing, deploying, and supporting Linux servers and desktops\n"
                              "      . A thorough understanding of systems and network protocols (DNS, TCP/IP, SMTP, HTTP/HTTPS) and UNIX/Linux system internals (kernel, drivers, file systems, virtual memory)\n"
                              "      . Excellent troubleshooting and creative problem-solving abilities\n"
                              "      . Excellent written and oral communication and interpersonal skills\n"
                              "      . Eperience deploying and supporting open source and proprietary infrastructure services (DNS, DHCP, LDAP, Radius, NFS, Kerberos, OpenSSL), integrating them into the existing infrastructure, and debugging and patching them (considered a plus)  \n"
                              "      . Experience implementing, operating, and supporting open source tools for network and security monitoring and management on Linux/Unix platforms (considered a plus)\n"
                              "      . Knowledge of scripting to automate tasks (considered a plus)\n"
                               ,
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
                              "\$180,000 - \$210,000",
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
