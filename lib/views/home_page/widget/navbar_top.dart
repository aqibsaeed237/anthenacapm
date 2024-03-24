import 'package:athenacapm/responsive.dart';
import 'package:athenacapm/routing/route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:athenacapm/utils/style.dart';
import 'package:get/get.dart';

class NavBarTop extends StatefulWidget {
  final String selectedNavItem;
  final Function(String) onNavItemClicked;

  const NavBarTop({
    super.key,
    required this.selectedNavItem,
    required this.onNavItemClicked,
  });

  @override
  _NavBarTopState createState() => _NavBarTopState();
}

class _NavBarTopState extends State<NavBarTop> {
  final List<String> navLinks = ["About", "Career", "Management", "Contact"];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the GlobalKey to the Scaffold's key property
      drawer: !Responsive.isMobile(context) ? const MyDrawer() : null,
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: !Responsive.isMobile(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.onNavItemClicked("home");
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            color: darkBlueColor,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "ACM",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: darkBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(),
                    Row(
                      children: navLinks.map((text) {
                        final bool isSelected =
                            widget.selectedNavItem.toLowerCase() == text.toLowerCase();
                        return InkWell(
                          onTap: () {
                            widget.onNavItemClicked(text.toLowerCase());
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  text,
                                  style: myTextStyle(color: isSelected ? darkBlueColor : darkBlueColor),
                                ),
                                if (isSelected)
                                  Container(
                                    width: text.length * 10.0, // Adjust the width based on text length
                                    height: 1,
                                    color: darkBlueColor,
                                  ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer(); // Call openDrawer on Scaffold's state
                      },
                      icon: const Icon(Icons.menu, color: darkBlueColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.onNavItemClicked("home");
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            color: darkBlueColor,
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            "ACM",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: darkBlueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}



class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: darkBlueColor,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: whiteColor,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('About', style: TextStyle(color: darkBlueColor)),
            onTap: () {
              Get.toNamed(AppRouteConstants.AboutRoute);
            },
          ),
          ListTile(
            title: const Text('Management', style: TextStyle(color: darkBlueColor)),
            onTap: () {
              Get.toNamed(AppRouteConstants.ManagementRoute);
            },
          ),
          ListTile(
            title: const Text('Career', style: TextStyle(color: darkBlueColor)),
            onTap: () {
              Get.toNamed(AppRouteConstants.CareerRoute);
            },
          ),
          ListTile(
            title: const Text('Contact', style: TextStyle(color: darkBlueColor)),
            onTap: () {
              Get.toNamed(AppRouteConstants.ContactRoute);
            },
          ),
        ],
      ),
    );
  }
}
