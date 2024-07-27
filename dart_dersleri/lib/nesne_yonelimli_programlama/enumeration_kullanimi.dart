import 'package:dart_dersleri/nesne_yonelimli_programlama/konserve_boyut.dart';

void main(){
  // Enumeration , Enum
  ucretHesapla(KonserveBoyut.orta, 50);
}

void ucretHesapla(KonserveBoyut boyut, int adet){
  switch(boyut){
    case KonserveBoyut.kucuk: {
      print("Toplam maliyet : ${adet * 32 } TL");
    }
    break;
    case KonserveBoyut.orta: {
      print("Toplam maliyet : ${adet * 45 } TL");
    }
    break;
    case KonserveBoyut.buyuk: {
      print("Toplam maliyet : ${adet * 67 } TL");
    }
    break;
    default:
      break;
  }
}