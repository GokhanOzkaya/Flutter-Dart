import 'dart:math';
import 'package:neyesem/AnaYemek.dart';

class menu {
  String cesit='';
  int _corbaRandomNo = 0;
  int _yemekRandomNo = 0;
  int _tatliRandomNo = 0;
  List<Urunler> _corbaListe = [
    Urunler(urunAdi: 'Mercimek', urunFiyat: 15,urunGorsel:'corba_1.jpg'),
    Urunler(urunAdi: 'Tarhana', urunFiyat: 25,urunGorsel:'corba_2.jpg'),
    Urunler(urunAdi: 'Tavuk Suyu', urunFiyat: 50,urunGorsel:'corba_3.jpg'),
    Urunler(urunAdi: 'Düğün Çorbası', urunFiyat: 30,urunGorsel:'corba_4.jpg'),
    Urunler(urunAdi: 'Yoğurtlu Çorba', urunFiyat: 90,urunGorsel:'corba_5.jpg')
  ];
  List<Urunler> _anaYemekListe = [
    anaYemekler(urunAdi: 'Karnı Yarık', urunFiyat: 50, urunGorsel:'yemek_1.jpg', porsiyon: 1.2, veganMi: true),
    anaYemekler(urunAdi: 'Mantı', urunFiyat: 55,urunGorsel:'yemek_2.jpg',porsiyon: 1.5, veganMi: true),
    anaYemekler(urunAdi: 'Kuru Fasülye', urunFiyat: 45,urunGorsel:'yemek_3.jpg',porsiyon: 2, veganMi: true),
    anaYemekler(urunAdi: 'İçli Köfte', urunFiyat: 77,urunGorsel:'yemek_4.jpg',porsiyon: 1, veganMi: true),
    anaYemekler(urunAdi: 'Balık', urunFiyat: 95,urunGorsel:'yemek_5.jpg',porsiyon: 0.5, veganMi: true)
  ];
  List<Urunler> _tatliListe = [
    tatlilar(urunAdi: 'Burma', urunFiyat: 15,urunGorsel:'tatli_1.jpg',dilimSayisi: 4,tazeMi: true),
    tatlilar(urunAdi: 'Baklava', urunFiyat: 25,urunGorsel:'tatli_2.jpg',dilimSayisi: 8,tazeMi: false),
    tatlilar(urunAdi: 'Sütlaç', urunFiyat: 50,urunGorsel:'tatli_3.jpg',dilimSayisi: 10,tazeMi: true),
    tatlilar(urunAdi: 'Kazan Dibi', urunFiyat: 30,urunGorsel:'tatli_4.jpg',dilimSayisi: 2,tazeMi: false),
    tatlilar(urunAdi: 'Dondurma', urunFiyat: 90,urunGorsel:'tatli_5.jpg',dilimSayisi: 1,tazeMi: true)
  ];
  void randomUretici(cesit) {
    if(cesit == 'corba') {
      _corbaRandomNo = Random().nextInt(5);
    }
    if(cesit=='tatli'){
      _tatliRandomNo = Random().nextInt(5);
    }
    if(cesit=='yemek'){
      _yemekRandomNo = Random().nextInt(5);
    }
  }

  int? getDilimSayisi(){
    return (_tatliListe[_tatliRandomNo] as tatlilar).dilimSayisi;
  }

  String? getTazeMi(){
    if((_tatliListe[_tatliRandomNo] as tatlilar).tazeMi==true){
      return 'Taze';
    }
    else{
      return 'Bayat';
    }
  }

  double? getPorsiyon(){
    return(_anaYemekListe[_yemekRandomNo] as anaYemekler).porsiyon;
  }

  String? getVeganMi(){
    if((_anaYemekListe[_yemekRandomNo] as anaYemekler).veganMi==true){
      return 'Vegan Ürün';
    }
    else{
      return 'Vegan Olmayan Ürün';
    }
  }

  String? getUrunGorsel(cesit){
    if(cesit=='corba'){
      return _corbaListe[_corbaRandomNo].urunGorsel.toString();
    }
    if(cesit=='anaYemek'){
      return _anaYemekListe[_yemekRandomNo].urunGorsel.toString();
    }
    if(cesit=='tatli'){
      return _tatliListe[_tatliRandomNo].urunGorsel.toString();
    }
    else{
    return null;
    }

  }
  String? getUrunAdi(cesit){
    if(cesit=='corba'){
      return _corbaListe[_corbaRandomNo].urunAdi.toString();
    }
    if(cesit=='anaYemek'){
      return _anaYemekListe[_yemekRandomNo].urunAdi.toString();
    }
    if(cesit=='tatli'){
      return _tatliListe[_tatliRandomNo].urunAdi.toString();
    }
    else{
      return null;
    }

  }

  int? getUrunFiyat(cesit){
    if(cesit=='corba'){
      return _corbaListe[_corbaRandomNo].urunFiyat;
    }
    if(cesit=='anaYemek'){
      return _anaYemekListe[_yemekRandomNo].urunFiyat;
    }
    if(cesit=='tatli'){
      return _tatliListe[_tatliRandomNo].urunFiyat;
    }
    else{
      return null;
    }

  }

}
