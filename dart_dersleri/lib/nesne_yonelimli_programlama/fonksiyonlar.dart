class Fonksiyonlar {
  // void: geri dönüş değeri olmayan
  void selamla1(){
    String sonuc = "Merhaba Ahmet";
    print(sonuc);
  }

  // void: geri dönüş değeri olan
  String selamla2(){
    String sonuc = "Merhaba Mehmet";
    return sonuc;
  }

  // parametre: dışarıdan veri almak
  String selamla3(String isim){
    String sonuc = "Merhaba ${isim}";
    return sonuc;
  }

  int toplama(int sayi1, int sayi2){
    return sayi1 + sayi2;
  }

  // Dart dilinde overloading kavramı yok!
  // Overloading -> sınıf içerisinde bir metodun adını tekrar kullanmak!
}