import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/utils/shoe_tile.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';
import '../models/cart.dart';


class ShopPage extends StatefulWidget{

  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() => _ShopPage();

}

class _ShopPage extends State<ShopPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body:Expanded(
          child: ListView.builder(
            itemCount: Cart().shoes.length,
              itemBuilder: (context, index){
            return ShoeTile(shoe: Cart().shoes[index]);
          })
      ),
    );
  }
}