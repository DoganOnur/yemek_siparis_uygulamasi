import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yemek_siparis/data/entity/urunler.dart';
import 'package:yemek_siparis/ui/view/favoriler.dart';
import 'package:yemek_siparis/ui/view/sepet.dart';

import 'anasayfa.dart';

class BottomNavigation extends StatefulWidget {


  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int selectIndeks = 0;
  var sayfalar = [const Anasayfa(),Favoriler()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[selectIndeks],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value){
         setState(() {
           selectIndeks =value;
         });
        },
        currentIndex: selectIndeks,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home),label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.solidHeart),label: "Favoriler"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.solidUser),label: "Profile"),
          BottomNavigationBarItem(icon: FloatingActionButton(

            onPressed: (){
            },child:Icon(FontAwesomeIcons.shoppingCart,size: 30,),
          ),label: "")

        ],
      ),
    );
  }
}
