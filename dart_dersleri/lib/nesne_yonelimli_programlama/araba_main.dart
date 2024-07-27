import 'package:dart_dersleri/nesne_yonelimli_programlama/araba.dart';

void main(){

  // Nesne oluşturma
  var bmw = Araba(renk: "Mavi", hiz: 300, calisiyorMu: true);
  bmw.bilgiAl();

  // Değer atama
  bmw.renk = "Kırmızı";
  bmw.hiz = 250;
  bmw.calisiyorMu = false;

  bmw.bilgiAl();

  bmw.calistir();
  bmw.bilgiAl();

  bmw.durdur();
  bmw.bilgiAl();

  bmw.calistir();
  bmw.bilgiAl();
  bmw.hizlan(50);
  bmw.bilgiAl();
  bmw.yavasla(55);
  bmw.bilgiAl();

  var sahin = Araba(renk: "Sarı", hiz: 150, calisiyorMu: false);
  sahin.bilgiAl();
  sahin.calistir();
  sahin.bilgiAl();
  sahin.hizlan(60);
  sahin.bilgiAl();
  sahin.yavasla(20);
  sahin.bilgiAl();
}