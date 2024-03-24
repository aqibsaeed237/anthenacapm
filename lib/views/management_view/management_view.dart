import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../responsive.dart';
import '../../utils/const.dart';
import '../../utils/style.dart';

class ManagementView extends StatelessWidget {
  const ManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:  !Responsive.isMobile(context)?100: 70,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: darkBlueColor,
                  ),
                  child: Padding(
                    padding:  !Responsive.isMobile(context)? const EdgeInsets.symmetric(horizontal: 150): const EdgeInsets.symmetric(horizontal: 40),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Our Team",
                            style: myTextStyle(color: whiteColor, fontSize:  !Responsive.isMobile(context)?40 : 20),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding:  !Responsive.isMobile(context)? const EdgeInsets.symmetric(horizontal: 100, vertical: 20): const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          _buildTeamMember(
                            context,
                            "Abdulla O. Awad",
                            "CEO & Co-Founder",
                            "Abdulla O. Awad serves as the CEO of Athena Capital Management, overseeing the firm's day-to-day operations and spearheading its groundbreaking investment strategies. Abdulla holds a degree in Finance from UBC’s Sauder School of Business and earned a certificate in Alternative Assets from Harvard Business School. After graduation, he identified an opportunity in the equity and cryptocurrency markets, capitalizing on it by successfully launching a family and friends fund. This fund returned 178% in six months before the capital and profits were redistributed to investors. Moreover, he worked at a Private Equity firm in Abu Dhabi, where he successfully closed deals worth more than \$300M - one of which was awarded EV Deal of the Year 2022. In 2023, he co-founded Athena Capital Management, where he has cultivated a portfolio marked by the firm's bold vision and steadfast growth, reflecting an unwavering commitment to excellence.",
                          ),
                          const SizedBox(height: 20),
                          _buildTeamMember(
                            context,
                            "Feras B. Shammout",
                            "CTO & Co-Founder",
                            "Feras Shammout serves as Athena Capital Management's CTO, overseeing the integrity and functionality of the firm's trading systems, technological infrastructure, and the implementation of cutting-edge quantitative strategies. Feras graduated with a degree in Computer Science, concentrating in Data Science and a minor in Mathematics, from the University of North Carolina at Charlotte (UNCC) and received a certificate in Financial Markets from Yale University. After graduation, Feras joined Massarat, a leading EdTech startup in Dubai, where he led a data analysis team in creating a transformative web application, which significantly advanced analytics in the education sector. Moreover, he then progressed to a pivotal role as Project Manager at VBRL, a forward-thinking company specializing in Crypto and AI solutions in Dubai, where he was instrumental in driving projects that delivered ground-breaking solutions and products to investors and clients. In 2023, Feras co-founded Athena Capital Management, using his profound technological and analytical expertise in establishing the firm’s technological framework and advancing its quantitative strategies.",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamMember(BuildContext context, String title, String subtitle, String description) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: !Responsive.isMobile(context)? MainAxisAlignment.spaceEvenly: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                title,
                style: myTextStyle(color: darkBlueColor, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              Text(
                subtitle,
                style: myTextStyle(color: lightGrayColor, fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(),
        Expanded(
          flex: 5,
          child: Text(
            description,
            style: myTextStyle(fontSize: 10, color: lightBlack),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
