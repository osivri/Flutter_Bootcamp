import 'package:dart_dersleri/nesne_yonelimli_programlama/a_sinifi.dart';

void main(){
  var a = ASinifi();

  // Standart kullanımı
  //print(a.degisken);
  //a.metod();

  // Sanal Nesne - İsimsiz Nesne
  //print(ASinifi().degisken);
  //ASinifi().metod();

  // Static Kullanımı - Sık kullanılması önerilmez.
  print(ASinifi.degisken);
  ASinifi.metod();
}