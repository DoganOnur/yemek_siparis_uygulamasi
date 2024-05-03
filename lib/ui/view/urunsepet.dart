import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yemek_siparis/ui/view/sepet.dart';

import '../../data/entity/urunler.dart';

class UrunSepeti extends StatefulWidget {
  Urunler urun;
  UrunSepeti({required this.urun});

  @override
  State<UrunSepeti> createState() => _UrunSepetiState();
}

class _UrunSepetiState extends State<UrunSepeti> {
  int adet = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürün Detayı",
        style: TextStyle(color: Colors.black,fontSize: 25),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
      leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(FontAwesomeIcons.remove,color: Colors.grey.shade700,size: 30,)),
        actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            FontAwesomeIcons.solidHeart,
            color: Colors.grey.shade600,
            size: 30,),
        ),
        ],
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildPadding(),
                buildPadding(),
                buildPadding(),
                buildPadding(),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 10),
                  child: Icon(FontAwesomeIcons.star),
                ),
              ],
            ),
            Image.network(widget.urun.image),
            Text("₺${widget.urun.urun_fiyat}",style: TextStyle(fontSize: 50 ,color: Colors.blue,fontWeight: FontWeight.bold),),
            Text(widget.urun.urun_adi,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: yazirenk),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                       adet == 0 ? adet:adet--;
                      });
                    },
                    icon: Icon(FontAwesomeIcons.minus,color: Colors.white,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Text(adet.toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 65,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        adet++;
                      });
                    },
                    icon: Icon(FontAwesomeIcons.add,color: Colors.white,),
                  ),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                kategoriler("25-35 dk"),
                kategoriler("Ücretsiz Teslimat"),
                kategoriler( "İndirim %10"),

              ],
            ),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("₺${widget.urun.urun_fiyat *adet}",style: TextStyle(fontSize: 35,color: yazirenk,fontWeight: FontWeight.w500),),
                  ),
                  Container(
                    width: 220,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sepet(widget.urun.urun_adi, widget.urun.urun_fiyat, adet, widget.urun.image)));
                      },
                      child: Center(
                        child: Text(
                          "Sepete Ekle",
                          style: TextStyle(
                              fontSize:30,
                          color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container kategoriler(String metin) {
    return Container(
                height: 40,
                decoration:BoxDecoration(
                    color: Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(metin,style: TextStyle(fontSize: 18),)),
                ),
              );
  }

  Padding buildPadding() {
    return Padding(
                padding: const EdgeInsets.only(top: 10,right: 10),
                child: Icon(FontAwesomeIcons.solidStar,color: Colors.amber,),
              );
  }
}
Color yazirenk = Color(0xFF303F9F);