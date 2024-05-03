import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Favoriler extends StatefulWidget {
  const Favoriler({super.key});

  @override
  State<Favoriler> createState() => _FavorilerState();
}

class _FavorilerState extends State<Favoriler> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Favoriler"),
      centerTitle: true,
        leading: IconButton(
          onPressed: (){

          },icon: Icon(FontAwesomeIcons.remove),
        ),
        actions: [
          Icon(FontAwesomeIcons.listUl),
        ],

      ),
    );
  }
}
