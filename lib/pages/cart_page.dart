import 'package:flutter/material.dart';

import '../models/cart.dart';
import '../utils/shoe_tile.dart';

class CartPage extends StatefulWidget{

  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPage();

}

class _CartPage extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: Expanded(
          child: ListView.builder(
              itemCount: Cart().carrito.length,
              itemBuilder: (context, index) {
                return ShoeTile(shoe: Cart().carrito[index], onPressed: ()=> {},);
              })
      ),
    );
  }

}