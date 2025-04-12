import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{

  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPage();

}

class _CartPage extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("cart", style: TextStyle(fontSize: 50),),
    );
  }
}