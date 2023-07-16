import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/drinktile.dart';
import 'models/drinkmodel.dart';
import 'models/shopmodel.dart';
import 'orderpage.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void goToOrderPage(Drink drink){
    //navigation to order page
    Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>  OrderPage(drink: drink))));
  }
  @override
  Widget build(BuildContext context) {
    
    return Consumer<TeaShop>(
        builder: (context, teaShop, child) => SafeArea(
              child: Padding(
                padding:const EdgeInsets.all(20),
                child: Column(
              
                  children:  [
                        //title of our shop
                  const  Center(child: Text('Hot Tea Shop', style: TextStyle(fontSize: 20),)),
                   Expanded(
                    child:ListView.builder(
                    itemCount:teaShop.shop.length ,
                    itemBuilder: ((context, index){
                      Drink individualDrinks = teaShop.shop[index];
                      return DrinkTile(drink: individualDrinks, onTap:() =>  goToOrderPage(individualDrinks), trailing: const Icon(Icons.arrow_forward),);
                    })))

                    
                    ],
                ),
              ),
            ));
  }
}
