import 'package:athenacapm/views/benefit/benefit.dart';
import 'package:athenacapm/views/carrer_view/widget/network_engineer.dart';
import 'package:athenacapm/views/carrer_view/widget/real_time-trading_offer.dart';
import 'package:athenacapm/views/carrer_view/widget/research_infrastructure.dart';
import 'package:athenacapm/views/carrer_view/widget/research_scientist.dart';
import 'package:athenacapm/views/carrer_view/widget/system_administrator.dart';
import 'package:athenacapm/views/management_view/management_view.dart';
import 'package:athenacapm/views/privacy_policy/privacy_policy.dart';
import 'package:athenacapm/views/support/support.dart';
import 'package:flutter/material.dart';
import 'package:athenacapm/views/home_page/widget/footer_widget.dart';
import 'package:athenacapm/views/home_page/widget/navbar_top.dart';
import 'package:athenacapm/views/home_page/widget/title_bar.dart';
import 'package:athenacapm/views/about_view/about_widget.dart';

import '../carrer_view/career_view.dart';
import '../carrer_view/widget/data_programmer_view.dart';
import '../carrer_view/widget/financial_infrastructure_programmer.dart';
import '../contact/contact_view.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedNavItem = 'home'; // Default selected item

  void onNavItemClicked(String item) {
    setState(() {
      selectedNavItem = item;
    });
  }

  Widget _buildBody() {
    switch (selectedNavItem.toLowerCase()) {
      case 'home':
        return Flexible(

            child: HomeView(context)); // Assuming TitleBar represents the default home page
      case 'about':
        return AboutWidget(context);
      case 'career':
        return const CareerView();
      case 'management':
        return const ManagementView();
      case 'contact':
        return ContactView();
      case 'benefits':
        return BenefitsView();
      case 'data_programmer':
        return DataProgrammerView();
      case 'financial_infrastructure':
        return const FinancialInfrastructureProgrammerView();
      case 'network_engineer':
        return NetworkEngineerView();
      case 'real_time_trading':
        return RealTimeTradingView();
      case 'research_infrastructure':
        return const ResearchInfrastructureView();
      case 'research_scientist':
        return ResearchScientistView();
      case 'system_administration':
        return const SystemAdministratorView();
      case 'privacy_policy':
        return const PrivacyPolicyView();
      case 'support':
        return const SupportScreen();
      default:
        return Container(); // Default to an empty container for unknown routes
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height*0.1,
              child: NavBarTop(
                selectedNavItem: selectedNavItem,
                onNavItemClicked: onNavItemClicked,
              ),
            ),
            SizedBox(
              height: size.height* 0.6,
              child: _buildBody(),
            ),
            SizedBox(
                height: size.height*0.3,
                child: FooterWidget(context)),
          ],
        ),
      ),
    );
  }
}
