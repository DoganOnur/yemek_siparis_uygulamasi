import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/entity/urunler.dart';

class Sepet extends StatefulWidget {
 String urun_adi;
 int urun_fiyat;
 int adet;
 String image;


 Sepet(this.urun_adi, this.urun_fiyat, this.adet, this.image);

  @override
  State<Sepet> createState() => _SepetState();
}

class _SepetState extends State<Sepet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sepetim",style: TextStyle(color: Colors.black),),

      centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(FontAwesomeIcons.remove,color: Colors.black,),),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,veri){
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.network(widget.image),
                    ),
                  ),
                  Expanded(

                      child: Container(
                        width: 300,
                        height: 100,
                        child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(widget.urun_adi,style: TextStyle(fontSize: 20),),
                        Text("Fiyat  :   ₺${widget.urun_fiyat.toString()}"),
                        Text("Adet  :   ${widget.adet}"),

                    ],
                  ),
                      )),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){

            }, icon: Icon(FontAwesomeIcons.trash)),
                      Text("₺${widget.urun_fiyat*widget.adet}"),
                    ]
                  )),
                ],
              ),

            );
      }),
    );
  }
}
