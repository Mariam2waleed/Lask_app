import 'package:flutter/material.dart';
import 'package:lask_app/Themes/themes.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

Widget customNavBar(int selected) {
  return StylishBottomBar(
    // borderRadius: const BorderRadius.all(Radius.circular(50)),
    hasNotch: true,
    backgroundColor: LightTheme().navBar,
    option: BubbleBarOptions(
        barStyle: BubbleBarStyle.horizontal,
        bubbleFillStyle: BubbleFillStyle.fill,
        opacity: 0.9),
    items: [
      BottomBarItem(
          icon: const Icon(Icons.home),
          title: const Text('Home', style: TextStyle(color: white)),
          backgroundColor: LightTheme().primaryText,
          selectedIcon: const Icon(Icons.home_outlined, color: white),
          selectedColor: white,
          unSelectedColor: LightTheme().primaryText),
      BottomBarItem(
          icon: const Icon(Icons.travel_explore),
          title: const Text('Explore', style: TextStyle(color: white)),
          backgroundColor: LightTheme().primaryText,
          selectedIcon: const Icon(Icons.travel_explore_outlined, color: white),
          selectedColor: white,
          unSelectedColor: LightTheme().primaryText),
      BottomBarItem(
          icon: const Icon(Icons.collections_bookmark_rounded),
          title: const Text('Bookmark', style: TextStyle(color: white)),
          backgroundColor: LightTheme().primaryText,
          selectedIcon:
              const Icon(Icons.collections_bookmark_outlined, color: white),
          selectedColor: white,
          unSelectedColor: LightTheme().primaryText),
      BottomBarItem(
          icon: const Icon(Icons.person),
          title: const Text('Profile', style: TextStyle(color: white)),
          backgroundColor: LightTheme().primaryText,
          selectedIcon: const Icon(Icons.person_outline, color: white),
          selectedColor: white,
          unSelectedColor: LightTheme().primaryText),
    ],
    currentIndex: selected,
    onTap: (selected) {
      
      
      // setState(() {
        // controller.jumpToPage(selected);
      // });
      
    },
  );
}
