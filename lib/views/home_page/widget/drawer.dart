import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routing/route_name.dart';
import '../../../utils/const.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width* 0.7,
      child: Drawer(
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
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('Management', style: TextStyle(color: darkBlueColor)),
              onTap: () {
                Get.toNamed(AppRouteConstants.ManagementRoute);
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('Career', style: TextStyle(color: darkBlueColor)),
              onTap: () {
                Get.toNamed(AppRouteConstants.CareerRoute);
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('Contact', style: TextStyle(color: darkBlueColor)),
              onTap: () {
                Get.toNamed(AppRouteConstants.ContactRoute);
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
