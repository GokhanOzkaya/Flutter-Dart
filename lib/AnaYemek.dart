import 'dart:ffi';

class Urunler {
  String? urunAdi;
  int? urunFiyat;
  String? urunGorsel;

  Urunler({this.urunAdi,this.urunFiyat, this.urunGorsel});
}
class tatlilar extends Urunler{
  int? dilimSayisi;
  bool tazeMi;
  tatlilar({String? urunAdi,int? urunFiyat, String? urunGorsel ,required this.dilimSayisi,required this.tazeMi}):super(urunAdi: urunAdi,urunFiyat: urunFiyat,urunGorsel: urunGorsel);

}
class anaYemekler extends Urunler{
  double? porsiyon;
  bool? veganMi;
  anaYemekler({String? urunAdi,int? urunFiyat, String? urunGorsel,required this.porsiyon,required this.veganMi}):super(urunAdi: urunAdi,urunFiyat: urunFiyat,urunGorsel: urunGorsel);
}