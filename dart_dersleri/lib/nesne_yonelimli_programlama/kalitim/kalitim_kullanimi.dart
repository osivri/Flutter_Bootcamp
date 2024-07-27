import 'package:dart_dersleri/nesne_yonelimli_programlama/kalitim/Ev.dart';
import 'package:dart_dersleri/nesne_yonelimli_programlama/kalitim/Saray.dart';
import 'package:dart_dersleri/nesne_yonelimli_programlama/kalitim/Villa.dart';

void main(){
  var topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 300);
  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 50);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);

  // Tip Kontrolü - javada instance of
  if(topkapiSarayi is Saray){
    print("Saraydır");
  }else{
    print("Saray değildir");
  }

  // Downcasting -> Üst sınıfı alt sınıfa çevirme.
  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray;

  // Upcasting -> Alt sınıfı üst sınıfa çevirme
  var s = Saray(kuleSayisi: 3, pencereSayisi: 100);
  Ev e = s;

}