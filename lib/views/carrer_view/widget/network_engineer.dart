import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../../responsive.dart';
import '../../home_page/widget/footer_widget.dart';



class NetworkEngineerView extends StatelessWidget {
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
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                    ),
                    child: Padding(
                      padding: Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40, vertical:4 ): EdgeInsets.symmetric(horizontal: 180.0, vertical: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Network Engineer",
                            style: myTextStyle(
                              color: darkBlueColor,
                              fontWeight: FontWeight.w700,
                              fontSize: Responsive.isMobile(context) ?26: 46,
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
                          "      .  Among other responsibilities, deploy, support, and troubleshoot the network infrastructure; document the IT infrastructure, policies, and procedures; and perform general user support",
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        Text("      .  Participate in after-hours work and an on-call rotation"),
            
                        Gap(6),
                        Text(
                          "Skills, Qualifications, and Experience",
                          style: myTextStyle(color: darkBlueColor),
                        ),
                        Text(
                          "      . A degree in a technical field\n"
                              "      . A minimum of two years' experience deploying and supporting scalable routed and switched networks\n"
                              "      . Hands-on experience with enterprise-class routers, switches, and firewalls, including Cisco and non-Cisco equipment\n"
                              "      . a good understanding of network and routing protocols (TCP/IP, DNS, DHCP, OSPF, and BGP)\n"
                              "      . Excellent troubleshooting and creative problem-solving abilities, including packet-level traffic analysis\n"
                              "      . Excellent written and oral communication and interpersonal skills  \n"
                              "      . Experience with systems administration in a Linux/Windows enterprise environment (considered a plus)\n"
                              "      . Experience deploying and supporting open source and proprietary infrastructure services (DNS, DHCP, LDAP, RADIUS, Kerberos) (considered a plus)\n"
                              "      . Experience implementing, operating, and supporting open source tools for network and security monitoring and management on Linux/Unix platforms (considered a plus)  \n"
                              "      . Knowledge of scripting to automate tasks (considered a plus)\n"
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
                              "\$180,000 - \$210,000",
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
          ),
          FooterWidget(context),
        ],
      ),
    );
  }
}
