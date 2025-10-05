import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:Read_Lead/screens/dashboar.dart';

import '../screens/favScreen.dart';
import '../screens/home_screen.dart';
import '../screens/setting.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      // backgroundColor: const Color(0xFF83ACE7),
      extendBody: true,
      bottomNavigationBar: Obx(
            () => FluidNavBar(
          icons: [
            FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: Colors.blueAccent,
              extras: {"label": "home"},
            ),
            FluidNavBarIcon(
              icon: Icons.store,
              backgroundColor: Colors.blueAccent,
              extras: {"label": "store"},
            ),
            FluidNavBarIcon(
              icon: Icons.favorite,
              backgroundColor: Colors.blueAccent,
              extras: {"label": "wishlist"},
            ),
            FluidNavBarIcon(
              icon: Icons.person,
              backgroundColor: Colors.blueAccent,
              extras: {"label": "profile"},
            ),
          ],
          defaultIndex: controller.selectedIndex.value,
          onChange: (index) => controller.selectedIndex.value = index,
          style: const FluidNavBarStyle(
            barBackgroundColor: Color(0xA74C4A4A),
            iconSelectedForegroundColor: Colors.white,
            iconUnselectedForegroundColor: Colors.white60,
          ),
          scaleFactor: 2.0,
        ),
      ),
      body: Obx(
            () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeOut,
          switchOutCurve: Curves.easeIn,
          child: controller.screens[controller.selectedIndex.value],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    DashboardScreen(),
    FavouriteBooksScreen(),
    CreditsScreen(),
  ];
}
