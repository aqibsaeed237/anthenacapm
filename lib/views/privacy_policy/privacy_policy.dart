import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../../responsive.dart';
import '../home_page/widget/footer_widget.dart';



class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

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
                      padding:  Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40):EdgeInsets.symmetric(horizontal: 180.0, vertical: 6),
                      child: Text(
                        "Privacy Policy",
                        style: myTextStyle(
                          color: darkBlueColor,
                          fontWeight: FontWeight.w700,
                          fontSize: Responsive.isMobile(context) ? 24: 46,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: Responsive.isMobile(context) ? EdgeInsets.symmetric(horizontal: 40, vertical: 4): EdgeInsets.symmetric(horizontal: 180.0, vertical:8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Introduction",
                          style: myTextStyle1(),
                        ),
                        Text(
                          "This policy describes how Athena Capital Management LLC and its affiliates ('Athena') treat personal information collected on the Athena www.athenacapm.com “Website”. This policy does not apply to information that Athena may collect through other means.",
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                              const Gap(6),
                        Text(
                          "Information that Athena Collects",
                          style: myTextStyle1(),
                        ),
                        Text("Personal Information",style: myTextStyle(color: darkBlueColor, fontSize: 12, fontWeight: FontWeight.w700), ),
                        Text(
                          " When you visit a Website, Athena may collect certain personal information about you, such as your name, address, and email address, as well as any other personal information that you may provide – for example, through submission of forms or other documents."   ,
                          style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        const Gap(4),
                        Text("Nonpersonal Information",style: myTextStyle(color: darkBlueColor, fontSize: 12, fontWeight: FontWeight.w700) ),
                        Text(
                          " Athena will also collect the following nonpersonal information about your visit(s):\n"
                          "    . The IP address and domain name used (the IP address is a numerical identifier assigned either to your Internet service provider or directly to your computer);\n"
                              "    . The type of browser and operating system you use\n"
            
                              "    . The date, time, and duration for which you visit a Website, the number of times you have visited a Website, and where you come from."
                            "For purposes of collecting some of the above-referenced information, Athena uses tracking tools on its Websites, such as browser cookies and web beacons. A cookie and a web beacon are pieces of data stored on your device containing information about your visit. Third-party analytics service providers, such as Google Analytics, may use cookies and web beacons through a Website to provide Athena with information about how you use and interact with the Website."
                          ,   style: myTextStyle(color: blackColor, fontSize: 12),
                        ),
                        const Gap(4),
                        Text(
                          "How Athena Uses Information that It Collects",
                          style: myTextStyle(color: darkBlueColor),
                        ),
                        Text(
                          "Athena uses information it collects in the following ways:",
                          style: myTextStyle1(),
                        ),
                        Text(
                          "   . To respond to your requests or questions\n"
                          "   . To inform you about Athena\n"
                          "   . To inform you about Athena\n"
                          "   . To improve a Website and the services provided  \n"
                          "   . For security purposes.\n"
                          "In addition, Athena may use your information as otherwise permitted by law."
                          ,
                          style: myTextStyle(color: lightBlack,),
                        ),
                        Text(
                          "Athena May Share Your Information in Limited Circumstances",
                         style: myTextStyle1(),
                        ),
                         Text("Athena may share your information with its employees, agents, or third-party service providers who need to know such information for purposes of performing their jobs, including to respond to requests or questions that you may have. In addition, Athena may share your information with third parties for purposes of complying with legal requirements or to respond to legal requests, such as in the case of a court order or subpoena or in connection with aregulatory investigation. Finally, Athena might also share information that it collects with others when it is investigating potential fraud or for other reasons as permitted by law.\n"
                        "For security purposes, Athena employs software to monitor traffic to identify unauthorized attempts to upload or change information or otherwise damage a Website. Any information that an individual provides to Athena by visiting a Website will be stored within the United States. If you live outside of the United States, you understand and agree that Athena may store your information in the United States. Each Website is subject to US laws, which may or may not afford the same level of protection as those in your country. For information on how Athena collects, utilizes, and maintains nonpublic personal information about individuals based in the European Union or the European Economic Area as required under the General Data Protection Regulation (EU), see Athena’s EU GDPR Policy.",
                         style: myTextStyle(color: blackColor, fontSize: 12),)
                       ,
            
                        const Gap(4),
                        Text(
                          "Protection of Information",
                          style: myTextStyle1(),
                        ),
                        Text("Athena is strongly committed to protecting any personal information collected through a Website against unauthorized access, use, or disclosure. Athena will not sell or otherwise disclose any personal information collected from a Website, other than as described herein." , style: myTextStyle(color: lightBlack, fontSize: 12),),
                const Text("In addition, Athena has implemented procedures to safeguard the integrity of its information technology assets, including but not limited to authentication, monitoring, auditing, and encryption. These security procedures have been integrated into the design, implementation, and day-to-day operations of a Website as part of a continuing commitment to the security of electronic content as well as the electronic transmission of information."   ,
                ),
                        const Gap(4),
                        Text(
                          "Tracking Tools",
                          style: myTextStyle1(),
                        ),
                        Text("As indicated above, Athena collects non-personal information on its Websites through the use of tracking tools, such as browser cookies. Your browser may give you the ability to control cookies. How you do so depends on the type of cookie. Certain browsers can be set to reject browser cookies. Options you select are browser and device specific. If you block or delete cookies, not all of the tracking that we have described in this policy will stop." , style: myTextStyle(color: lightBlack, fontSize: 12),),
                        Text("Some websites have 'do not track' features that allow you to tell a website not to track you. These features are not all uniform. Athena does not currently respond to those signals. If you block cookies, certain features on Athena’s sites may not work. If you block or reject cookies, not all of the tracking described herein will stop.."  ,style: myTextStyle(color: lightBlack, fontSize: 12),),
                     const Gap(4),
                        Text("Children and Websites", style: myTextStyle1(),),
                        Text("Each Website is meant for adults. Athena does not knowingly collect personally identifiable information from children under age 13. If you are a parent or legal guardian of a child under 13 who believes that child may have visited an Athena web site, please contact the address below.",
                        style: myTextStyle(color: blackColor, fontSize: 12),),
                        const Gap(4),
                        Text("Links to Other Sites or Third-Party Services", style: myTextStyle1(),),
                        Text("If a link to a third-party site is included on a Website and you click on it, you will be taken to a website Athena does not control. This Policy does not apply to the privacy practices of that website. Read the privacy policy of other websites carefully. We are not responsible for these third-party sites.", style: myTextStyle(color: blackColor, fontSize: 12),),
                  const Gap(4),
                  Text("Disclaimer and Policy Updates", style: myTextStyle1(),),
                  Text("This Policy should not be construed as giving business, legal, or other advice or warranting as fail-proof the security of information provided through the Website. The Internet is not 100% secure, and Athena cannot promise that your use of a Website or software will be completely safe. Athena disclaims any liability with respect to any information obtained by a third party through illegal entry into or breach of a Website. Athena will maintain all information as long as needed to comply with internal policies or applicable laws or for record-keeping purposes.\n"
                    "Athena will notify you of any material changes in this policy by posting an updated copy on the applicable Websites. Please check the applicable Website periodically for updates.", style: myTextStyle(color: blackColor, fontSize: 12),),
                  const Gap(4),
                  Text("Contact Information", style: myTextStyle1(),),
                  Text("For questions regarding this privacy policy, please contact renfundweb@Athena.com.\n"
                    "Athena will notify you of any material changes in this policy by posting an updated copy on the applicable Websites. Please check the applicable Website periodically for updates.  "         , style: myTextStyle(color: blackColor, fontSize: 12),),
                  const Gap(6),
                  Text("Last updated May 2018", style: myTextStyle(color: blackColor, fontSize: 12, fontWeight: FontWeight.w600),),
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
