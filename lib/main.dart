import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'models/shopmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //i am using multiprovider because we may have so many models using provider
      providers:[
        ChangeNotifierProvider(create: (context)=>TeaShop())
      ],
    child:  MaterialApp(
      debugShowCheckedModeBanner : false,
     theme: ThemeData(primarySwatch: Colors.brown),
      home: const Home(),
    ),
    );
  }
}

