import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:makeappointment/constants/app_icon_constants.dart';

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
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    AppIconConstants.home,
                    const Text("Home").paddingSymmetric(horizontal: 10)
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    AppIconConstants.search,
                    const Text("Search").paddingSymmetric(horizontal: 10)
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    AppIconConstants.settings,
                    const Text("Settings").paddingSymmetric(horizontal: 10)
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    AppIconConstants.account,
                    const Text("Account").paddingSymmetric(horizontal: 10)
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    AppIconConstants.feedBack,
                    const Text("Feedback").paddingSymmetric(horizontal: 10)
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    AppIconConstants.about,
                    const Text("About").paddingSymmetric(horizontal: 10)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
