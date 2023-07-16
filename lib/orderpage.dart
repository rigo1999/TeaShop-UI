import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/drinkmodel.dart';
import 'models/shopmodel.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweet = 0.5;
  double sweet1=0.20;
  double sweet2=0.75;
  void chooseSweet(double newSweet) {
    setState(() {
      sweet = newSweet;
    });
  }
  void chooseSweet1(double newSweet1) {
    setState(() {
      sweet1 = newSweet1;
    });
  }
  void chooseSweet2(double newSweet2) {
    setState(() {
      sweet2 = newSweet2;
    });
  }

//Add to cart
void addToCart(){
  Provider.of<TeaShop>(context, listen: false).addToCart(widget.drink);
  //on click navigate to the shop page
  Navigator.of(context);
  //message to prove that drink is added to the cart
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successfully added to card')));
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 127, 102),
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        title: Text(widget.drink.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment :MainAxisAlignment.center,
        children: [
        //drink image
        Expanded(child: Image.asset(widget.drink.imagePath)),

        //sliders to customize drink
        Padding(
          padding: const EdgeInsets.only(bottom:25.0, left:25,right:25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text('Sweet',style: TextStyle(fontSize:20,fontWeight:FontWeight.w300))),
                  Expanded(
                    child: Slider(
                     divisions: 10,
                      label: sweet.toString(),
                      value: sweet,
                      onChanged: ((value) => chooseSweet(value)),
                    ),
                  )
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text('Ice',style: TextStyle(fontSize:20))),
                  Expanded(
                    child: Slider(
                     divisions: 10,
                      label: sweet1.toString(),
                      value: sweet1,
                      onChanged: ((value1) => chooseSweet1(value1)),
                    ),
                  )
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const SizedBox(
                    width: 100,
                    child: Text('Pearls',style: TextStyle(fontSize:20))),
                  Expanded(
                    child: Slider(
                      divisions: 10,
                      label: sweet2.toString(),
                      value: sweet2,
                      onChanged: ((value2) => chooseSweet2(value2)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),

        //add to cart button

        Padding(
          padding: const EdgeInsets.only(bottom:30.0),
          child: MaterialButton(
            color:Colors.white,
            onPressed:addToCart,
          child: const Text("Add to cart", style: TextStyle(fontSize:20)),),
        )
      ]),
    );
  }
}
