import 'package:ecommerce/utils/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';
import '../utils/shoe_tile.dart';

class CartPage extends StatefulWidget{

  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPage();

}

class _CartPage extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=> Column(
      children: [
        const Text("Mi carrito", style: TextStyle(fontSize: 40, backgroundColor: Colors.pinkAccent, color: Colors.white),),
        const SizedBox(height: 10),
        Expanded(child: ListView.builder(
            itemCount: value.carrito.length,
            itemBuilder: (context,index){
          Shoe shoe = value.carrito[index];
          return CartItem(shoe: shoe, onPressed: ()=> {},);
        }))
      ]
    )
    );
  }

}