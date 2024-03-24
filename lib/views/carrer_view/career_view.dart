import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:gap/gap.dart';
import 'package:athenacapm/responsive.dart';
import 'package:athenacapm/routing/route_name.dart';

class CareerView extends StatelessWidget {
  const CareerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: !Responsive.isMobile(context)?const EdgeInsets.symmetric(horizontal: 170, vertical: 10): const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Programmer",
                style: myTextStyle(
                  color: darkBlueColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const Gap(2),
              const Divider(
                thickness: 1,
                color: lightGrayColor,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.DataProgrammerRoute);
                },
                child: buildCareerRow("Data Programmer", "Boston, MA", context),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.FinancialInfraStructureRoute);
                },
                child: buildCareerRow("Financial Infrastructure Programmer", "Boston, MA", context),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.RealTimeTradingRoute);
                },
                child: buildCareerRow("Real-Time Trading Programmer", "Boston, MA", context),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.ResearchInfraStructureRoute);
                },
                child: buildCareerRow("Research InfraStructure Programmer", "Dubai, UAE", context),
              ),
              const Gap(18),
              Text(
                "Research",
                style: myTextStyle(
                  color: darkBlueColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const Gap(2),
              const Divider(
                thickness: 1,
                color: lightGrayColor,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.ResearchScientistRoute);
                },
                child: buildCareerRow("Research Scientist", "Boston, MA", context),
              ),
              const Gap(18),
              Text(
                "Systems",
                style: myTextStyle(
                  color: darkBlueColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const Gap(2),
              const Divider(
                thickness: 1,
                color: lightGrayColor,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.NetworkEngineerRoute);
                },
                child: buildCareerRow("Network Engineer", "Dubai, UAE", context),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(AppRouteConstants.SystemAdministrationRoute);
                },
                child: buildCareerRow("System Administrator", "Dubai, UAE", context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCareerRow(String title, String location, BuildContext context) {
    return !Responsive.isMobile(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: myTextStyle(color: blackColor)),
              Text(location, style: myTextStyle(color: blackColor)),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: myTextStyle(color: blackColor)),

              Text(location, style: myTextStyle(color: blackColor, fontSize: 12), ),
              const Gap(2),
            ],
          );
  }
}
