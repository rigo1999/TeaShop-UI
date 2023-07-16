import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class GbuttomNav extends StatelessWidget {
  final   void Function(int)? onTabChange;
  const GbuttomNav({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: GNav(
        gap: 4,
       // backgroundColor: Colors.white24,
        activeColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabActiveBorder: Border.all(color:Colors.white),
        onTabChange:(value) => onTabChange!(value),
        tabs:   [
          GButton(
            gap: 2,
            curve: Curves.bounceInOut,
            icon: Icons.shop_2_outlined,
          text: 'shop',
          textColor: Colors.white,
          hoverColor: Colors.grey[400],
          ),
          GButton(
            gap:2,
            icon: Icons.card_travel,
          text: 'cart',
           textColor: Colors.white,
          hoverColor: Colors.grey[400],)
        ],
      ),
    );
  }
}