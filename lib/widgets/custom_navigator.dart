import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(
        rippleColor: Colors.grey[300]!, // tab button ripple color when pressed
        haptic: true, // haptic feedback
        tabBorderRadius: 10,
        tabActiveBorder: null, // tab button border
        tabBorder: null, // tab button border
        curve: Curves.linear, // tab animation curves
        duration: const Duration(milliseconds: 300), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey[800], // unselected icon color
        activeColor: Colors.white, // selected icon and text color
        iconSize: 30, // tab button icon size
        tabBackgroundColor: const Color(0xFF4277e8), // selected tab background color
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10), // navigation bar padding
        tabMargin: const EdgeInsets.all(10),
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
            text: 'Home',
          ),
          GButton(
            icon: Icons.location_on_outlined,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.person_outline,
            text: 'Search',
          ),
        ]);
  }
}
