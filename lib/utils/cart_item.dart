
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';

class CartItem extends StatelessWidget{

  Shoe shoe;
  void Function()? onPressed;

  CartItem({super.key, required this.shoe, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 30), child: Row(
      children: [
        Image.asset(shoe.imagePath, width: 160,),
        Spacer(),
        Padding(padding: EdgeInsets.only(right: 20), child:
        IntrinsicWidth(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold),),
          Text('\$${shoe.price.toString()}'),
            ElevatedButton(onPressed: () => onPressed!(), style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent, fixedSize: Size(40, 40)), child: Row( mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.delete_forever_rounded, color: Colors.white, size: 16,weight:500,)])),
        ],)
        )
        )
      ],
    )
    );
  }

}