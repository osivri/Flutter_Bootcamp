void main(){
  // Tanımlama
  var plakalar = [16,23,6]; // 0: 16, 1: 23, 2: 6
  var meyveler = <String>[];

  // Veri Ekleme
  meyveler.add("Muz"); // 0. indeks
  meyveler.add("Kiraz"); // 1. indeks
  meyveler.add("Elma"); // 2. indeks
  print(meyveler);

  // Veri Güncelleme
  meyveler[1] = "Kivi";
  print(meyveler);

  // Insert
  meyveler.insert(1, "Portakal"); // İstediğimiz indekse ekler.
  print(meyveler);

  // Veri Okuma
  String meyve = meyveler[2];
  print(meyve);

  print("Boyut : ${meyveler.length}");
  print("Boş Kontrol : ${meyveler.isEmpty}");
  print("Boş Değil Kontrol : ${meyveler.isNotEmpty}");

  // For each
  for(var meyve in meyveler){
    print("Sonuç : ${meyve}");
  }

  for(var i = 0; i<meyveler.length;i++){
    print("Sonuç 2 : ${i}. -> ${meyveler[i]} ");
  }

  // Terse çevirme
  var liste = meyveler.reversed.toList();
  print(liste);

  // Sıralama
  meyveler.sort();
  print(meyveler);

  // Silme
  meyveler.removeAt(1);
  print(meyveler);

  // Temizleme
  meyveler.clear();
  print(meyveler);
}