import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yemek_siparis/data/repo/urunlerdaorepository.dart';

import '../../data/entity/urunler.dart';

class AnasayfaCubit extends Cubit<List<Urunler>>{
  AnasayfaCubit():super(<Urunler>[]);

  var urepo = UrunlerDaoRepository();
  Future<void> urunYukle()async{
  var liste = await urepo.urunYukle();
  emit(liste);

  }
  Future<void> arama(String arama)async{
    var liste = await urepo.arama(arama);
    emit(liste);

  }

}