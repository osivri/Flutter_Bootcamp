import 'package:dart_dersleri/nesne_yonelimli_programlama/fonksiyonlar.dart';

void main(){

  var f = Fonksiyonlar();

  f.selamla1();

  //print(f.selamla2());
  // veya
  String gelenSonuc = f.selamla2();
  print("Sonuc : ${gelenSonuc}");

  String sonuc = f.selamla3("Oğuzhan");
  print("Sonuc : ${sonuc}");

  int sonuc2 = f.toplama(10,15);
  print("Sonuc2 : ${sonuc2}");
}