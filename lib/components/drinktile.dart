import 'package:flutter/material.dart';

import '../models/drinkmodel.dart';
class DrinkTile extends StatelessWidget {
  final Drink drink;
  final Widget trailing;
  final   void Function()? onTap;
   const DrinkTile({super.key, required this.drink,required this.onTap, required this.trailing});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.brown[100]
          ),
          child: ListTile(
            title: Text(drink.name),
            subtitle: Text(drink.price),
            leading: Image.asset(drink.imagePath),
            trailing: trailing,
        
          ),
        ),
      ),
    );
  }
}