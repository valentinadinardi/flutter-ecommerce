import 'package:ecommerce/utils/shoe_tile.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget{

  const ShopPage({super.key});

  @override
  State<StatefulWidget> createState() => _ShopPage();

}

class _ShopPage extends State<ShopPage>{

  var shoes = [
    Shoe(
      name: "Nike Air Force 1",
      description: "Un ícono del calzado urbano desde 1982, las Air Force 1 ofrecen una combinación perfecta de estilo clásico y comodidad moderna. Su diseño atemporal y su amortiguación Nike Air las convierten en una elección imprescindible para cualquier guardarropa.",
      price: 203.5,
      imagePath: 'lib/images/nikeairforce.jpg',
    ),
    Shoe(
      name: "Nike Air Jordan 1",
      description: "Lanzadas en 1985, las Air Jordan 1 revolucionaron el mundo del baloncesto y la moda urbana. Con su diseño audaz y la icónica combinación de colores 'Chicago', estas zapatillas siguen siendo un símbolo de estilo y rendimiento.",
      price: 203.5,
      imagePath: 'lib/images/nikeairjordan.jpg',
    ),
    Shoe(
      name: "Nike Air Max 90",
      description: "Introducidas en 1990, las Air Max 90 destacan por su diseño llamativo y la unidad Air visible en el talón. Ofrecen una amortiguación superior y un estilo retro que sigue siendo relevante en la actualidad.",
      price: 203.5,
      imagePath: 'lib/images/nikeairmax.jpg',
    ),
    Shoe(
      name: "Nike Air Max DN",
      description: "La última innovación en la línea Air Max, las DN incorporan la tecnología Dynamic Air para una amortiguación adaptativa. Su diseño futurista y materiales de alta calidad proporcionan una experiencia de uso excepcional.",
      price: 203.5,
      imagePath: 'lib/images/nikeairmaxdn.jpg',
    ),
    Shoe(
      name: "Nike Court Vision Low",
      description: "Inspiradas en las zapatillas de baloncesto de los años 80, las Court Vision Low combinan un estilo retro con materiales modernos. Su parte superior de cuero sintético y suela de goma duradera ofrecen comodidad y tracción para el uso diario.",
      price: 203.5,
      imagePath: 'lib/images/nikecourtvision.jpg',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body:Expanded(
          child: ListView.builder(
            itemCount: shoes.length,
              itemBuilder: (context, index){
            return ShoeTile(shoe: shoes[index]);
          })
      ),
    );
  }
}