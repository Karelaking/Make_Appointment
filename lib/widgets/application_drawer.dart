import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';
import 'package:makeappointment/widgets/application_drawer_menu_items.dart';

class ApplicationDrawer extends StatelessWidget {
  const ApplicationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "drawer",
      child: Drawer(
        width: MediaQuery.of(context).size.height * 0.35,
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 15),
              height: MediaQuery.of(context).size.height * 0.3,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      child: Center(child: AppIconConstants.account),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    const Text("Unknown"),
                    const Text("UID - 78430257432087698"),
                  ],
                ),
              ),
            ),
            const ApplicationDrawerMenuItems(
                title: "Home", icon: AppIconConstants.home),
            const ApplicationDrawerMenuItems(
                title: "Search", icon: AppIconConstants.search),
            const ApplicationDrawerMenuItems(
                title: "Settings", icon: AppIconConstants.settings),
            const ApplicationDrawerMenuItems(
                title: "Account", icon: AppIconConstants.account),
            const ApplicationDrawerMenuItems(
                title: "Feedback", icon: AppIconConstants.feedBack),
            const ApplicationDrawerMenuItems(
                title: "About", icon: AppIconConstants.about),
          ],
        ),
      ),
    );
  }
}
