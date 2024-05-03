import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yemek_siparis/ui/cubit/anasayfa_cubit.dart';
import 'package:yemek_siparis/ui/view/sepet.dart';
import 'package:yemek_siparis/ui/view/urunsepet.dart';

import '../../data/entity/urunler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  TextEditingController tf = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AnasayfaCubit>().urunYukle();
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context).size;
    var ekranYuksekligi = ekranBilgisi.height;
    var ekranGenisligi = ekranBilgisi.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,// klavye açılınca küçülme ortadan kalkar
      appBar: AppBar(title: Text(""),),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0,right: 10,left: 10),
        child: Column(

          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                width: double.infinity,
                decoration:BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(5),
                ) ,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    onTap: (){
                      context.read<AnasayfaCubit>().arama(tf.text);
                    },
                    decoration: InputDecoration(
                      hintText: "Ara",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Icon(FontAwesomeIcons.search),
                      suffixIconColor: Colors.grey
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 9,
                child:BlocBuilder<AnasayfaCubit,List<Urunler>> (
                  builder: (context ,veri){
                    if(veri.isNotEmpty){
                      return  GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1/1.5
                          ),
                          itemCount: veri!.length,
                          itemBuilder: (context, indeks){
                            var urun = veri[indeks];
                            return GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>UrunSepeti(urun: urun))).then((value) =>{
                                  print("Anasayfa dönüldü"),
                                });
                              },
                              child: Card(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: (){
                                              print("aktif ${urun}");
                                            },
                                            icon: Icon(FontAwesomeIcons.heart)),
                                      ],
                                    ),
                                    Image.network(urun.image),
                                  ],
                                    ),
                                    Text(urun.urun_adi, style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(FontAwesomeIcons.bicycle),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text("Ücretsiz Gönderim ",style: TextStyle(fontWeight: FontWeight.w300),),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0, right: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₺ ${urun.urun_fiyat}", style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                          ),
                                          ),
                                          Icon(FontAwesomeIcons.solidPlusSquare),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }else{
                      return CircularProgressIndicator();
                    }
                  },

                )
            )
          ],
        ),
      ),



    );
  }
}
