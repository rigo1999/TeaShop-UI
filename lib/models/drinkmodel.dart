import 'package:provider/provider.dart';

class Drink {
  final String price;
  final String name;
  final String imagePath;
  Drink({
    required this.imagePath,
    required this.price,
    required this.name,
  });
}
