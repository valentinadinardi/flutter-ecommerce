import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/utils/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';
import '../models/cart.dart';


class ShopPage extends StatefulWidget{

  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() => _ShopPage();

}

class _ShopPage extends State<ShopPage>{

  void agregarAlCarrito(shoe){
    Provider.of<Cart>(context, listen: false).agregarCarrito(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(title: Text("Agregado correctamente"),content: Text("Miralo en tu carrito"),));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body:Expanded(
          child: ListView.builder(
            itemCount: Cart().shoes.length,
              itemBuilder: (context, index){
                Shoe shoe = value.obtenerProductos()[index];
            return ShoeTile(shoe: shoe, onPressed: ()=>agregarAlCarrito(shoe),);
          })
      ),
    ),
    );
  }
}