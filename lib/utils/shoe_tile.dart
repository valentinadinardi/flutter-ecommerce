import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(shoe.imagePath),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(width: 300,  child:  Text(shoe.description, style: TextStyle(fontSize: 13), softWrap: true,overflow: TextOverflow.visible,)),
                    Text('\$${shoe.price}', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Column(
                  children: [
                   ElevatedButton(onPressed: () => {}, style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.pinkAccent, fixedSize: Size(60, 60)), child: Row( mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.add, color: Colors.white, size: 16,)])),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
