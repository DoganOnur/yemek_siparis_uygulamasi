import '../entity/urunler.dart';

class UrunlerDaoRepository {
  Future<List<Urunler>> urunYukle()async{
    var urunListesi = <Urunler>[];
    var u1 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/ayran.png", urun_adi: "Ayran", urun_fiyat: 3);
    var u2 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/baklava.png", urun_adi: "Baklava", urun_fiyat: 25);
    var u3 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/fanta.png", urun_adi: "Kutu Fanta", urun_fiyat: 6);
    var u4 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/izgarasomon.png", urun_adi: "Izgara Somon", urun_fiyat: 55);
    var u5 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/izgaratavuk.png", urun_adi: "Izgara Tavuk", urun_fiyat: 55);
    var u6 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/kadayif.png", urun_adi: "Kadayıf", urun_fiyat: 55);
    var u7 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/kahve.png", urun_adi: "Kahve", urun_fiyat: 55);
    var u8 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/kofte.png", urun_adi: "Köfte", urun_fiyat: 55);
    var u9 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/lazanya.png", urun_adi: "Lazanya", urun_fiyat: 55);
    var u10 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/makarna.png", urun_adi: "Makarna", urun_fiyat: 55);
    var u11 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/pizza.png", urun_adi: "Pizza", urun_fiyat: 55);
    var u12 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/su.png", urun_adi: "Su", urun_fiyat: 55);
    var u13 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/sutlac.png", urun_adi: "Sütlaç", urun_fiyat: 55);
    var u14 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/tiramisu.png", urun_adi: "tiramisu", urun_fiyat: 55);
    urunListesi.add(u1);
    urunListesi.add(u2);
    urunListesi.add(u3);
    urunListesi.add(u4);
    urunListesi.add(u5);
    urunListesi.add(u6);
    urunListesi.add(u7);
    urunListesi.add(u8);
    urunListesi.add(u9);
    urunListesi.add(u10);
    urunListesi.add(u11);
    urunListesi.add(u12);
    urunListesi.add(u13);
    urunListesi.add(u14);
    return urunListesi;

  }
  Future<List<Urunler>> arama(String arama)async{
    var urunListesi = <Urunler>[];
    var u1 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/ayran.png", urun_adi: "Ayran", urun_fiyat: 3);
    var u2 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/baklava.png", urun_adi: "Baklava", urun_fiyat: 25);
    var u3 = Urunler(image: "http://kasimadalan.pe.hu/yemekler/resimler/fanta.png", urun_adi: "Kutu Fanta", urun_fiyat: 6);
    urunListesi.add(u1);
    urunListesi.add(u2);
    urunListesi.add(u3);
    return urunListesi;
  }
}