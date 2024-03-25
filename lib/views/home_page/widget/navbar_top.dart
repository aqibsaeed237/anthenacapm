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
    Key? key,
    required this.selectedNavItem,
    required this.onNavItemClicked,
  }) : super(key: key);

  @override
  _NavBarTopState createState() => _NavBarTopState();
}

class _NavBarTopState extends State<NavBarTop> {
  final List<String> navLinks = ["About", "Career", "Management", "Contact"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child:  Responsive.isMobile(context) ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:  Row(
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
                            style: myTextStyle(
                                color: isSelected ? darkBlueColor : darkBlueColor),
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


      ):  Row(
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
                          style: myTextStyle(
                              color: isSelected ? darkBlueColor : darkBlueColor),
                        ),
                        if (isSelected)
                          Container(
                            width: text.length * 8.0, // Adjust the width based on text length
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

      ),
    );
  }
}

