import 'dart:html';

import 'package:flutter/material.dart';
import 'package:teashoppapp/shop.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
import 'components/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex=0;
  List<Widget> pages=[
      const ShopPage(),
      const CartPage(),
  ];
  void goToPageIndex(int newIndex){
    setState(() {
      selectedIndex=newIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown,

      bottomNavigationBar: GbuttomNav(
        onTabChange: (index) => goToPageIndex(index),
      ),

      body:pages[selectedIndex],
    );
  }
}