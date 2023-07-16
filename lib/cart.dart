import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teashoppapp/components/drinktile.dart';
import 'package:teashoppapp/models/shopmodel.dart';

import 'models/drinkmodel.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  //remove drink from card
  void removeFromCart(Drink drink){
    Provider.of<TeaShop>(context, listen: false).removeFromCart(drink);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<TeaShop>(builder :(context, teaShop, child)=>SafeArea(child: Column(
        children: [
         const  SizedBox(height:15),
          //header
         const Text('Your cart', style: TextStyle(fontSize: 20),),
         const SizedBox(height: 15,),
         Expanded(child: ListView.builder(
          itemCount: teaShop.userCart.length,
          itemBuilder: (context, index){
            //get the drink
            Drink drink =teaShop.userCart[index];
            return DrinkTile(drink: drink, onTap: ()=> removeFromCart(drink), trailing: const Icon(Icons.delete));

            
          })),

          //pay button
          MaterialButton(
            color: Colors.brown[300],
            onPressed: (){},
          child: const Text('PAY', style: TextStyle(color: Colors.white),),)
    
      ],)),
    );
  }
}