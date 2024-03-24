import 'dart:js';

import 'package:athenacapm/views/benefit/benefit.dart';
import 'package:athenacapm/views/carrer_view/widget/data_programmer_view.dart';
import 'package:athenacapm/views/carrer_view/widget/financial_infrastructure_programmer.dart';
import 'package:athenacapm/views/carrer_view/widget/network_engineer.dart';
import 'package:athenacapm/views/carrer_view/widget/real_time-trading_offer.dart';
import 'package:athenacapm/views/carrer_view/widget/research_infrastructure.dart';
import 'package:athenacapm/views/carrer_view/widget/research_scientist.dart';
import 'package:athenacapm/views/carrer_view/widget/system_administrator.dart';
import 'package:athenacapm/views/home_page/home_page.dart';
import 'package:athenacapm/views/privacy_policy/privacy_policy.dart';
import 'package:athenacapm/views/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/carrer_view/career_view.dart';
import '../views/contact/contact_view.dart';
import '../views/home_page/widget/title_bar.dart';
import '../views/management_view/management_view.dart';
import '../views/about_view/about_widget.dart';
import 'route_name.dart';

class AppRoutes {
  static const initialRoute = AppRouteConstants.HomeRoute;
  static final routes = [
    GetPage(
      name: '/',
      page: () => const MyHomePage(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.AboutRoute,
      page: () => AboutWidget(context as BuildContext),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.CareerRoute,
      page: () => const CareerView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.ManagementRoute,
      page: () => const ManagementView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.ContactRoute,
      page: () => ContactView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    // Add more routes as needed
    GetPage(
      name: AppRouteConstants.BenifitsRoute,
      page: () => BenefitsView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.DataProgrammerRoute,
      page: () => DataProgrammerView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.FinancialInfraStructureRoute,
      page: () => const FinancialInfrastructureProgrammerView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.NetworkEngineerRoute,
      page: () => NetworkEngineerView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.RealTimeTradingRoute,
      page: () => RealTimeTradingView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.ResearchInfraStructureRoute,
      page: () => const ResearchInfrastructureView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.ResearchScientistRoute,
      page: () => ResearchScientistView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.SystemAdministrationRoute,
      page: () => const SystemAdministratorView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.PrivacyPolicyRoute,
      page: () => const PrivacyPolicyView(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: AppRouteConstants.SupportRoute,
      page: () => const SupportScreen(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 600),
    ),
  ];
}
