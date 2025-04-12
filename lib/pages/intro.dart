import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget{
  
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[400],
     body: Column(
       children: [
         Padding(padding: const EdgeInsets.only(left: 40),
             child: Image.asset('lib/images/nike.png', width: 150.0, height: 200.0, color: Colors.pinkAccent),
    ),
         Center(child:Padding(padding: EdgeInsets.only(left: 30), child: const Text("Bienvenido a la tienda de Nike", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,)) )),
         Padding(padding: EdgeInsets.only(left: 30), child: const Text("Just do it",  style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 20))),
         Padding(padding: EdgeInsets.only(top: 20), child:  GestureDetector( 
           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
             child: Container(
           decoration: BoxDecoration(
             color: Colors.pinkAccent,
             boxShadow: [BoxShadow(color: Colors.black, offset: Offset(5, 5) )],
           ),
           height: 50,
           width: 200,
           child: Padding(padding: EdgeInsets.all(10), child: Row(children: [ Icon(Icons.shop_sharp), const SizedBox(width: 20,), Text("Shop now", style: GoogleFonts.aboreto(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold))]),
         )
         )
         )
         )
       ],
     )
   );
  }
  
}