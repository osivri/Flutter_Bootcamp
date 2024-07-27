import 'dart:collection';

void main(){
  // Tanımlama
  var sayilar = {"Bir": 1, "İki":2};
  var iller = HashMap<int,String>();

  // Değer Atama
  iller[16] = "Bursa";
  iller[34] = "İstanbul";
  print(iller);


  // Güncelleme
  iller[16] = "YENİ BURSA";
  print(iller);

  // Veri Okuma
  String il = iller[34]!;
  print(il);

  print("Boyut kontrol : ${iller.length}");
  print("Boş Kontrol : ${iller.isEmpty}");

  var anahtarlar = iller.keys;

  for(var a in anahtarlar){
    print("$a -> ${iller[a]}");
  }

  // Silme
  iller.remove(16);
  print(iller);

  // Temizleme
  iller.clear();
  print(iller);
}