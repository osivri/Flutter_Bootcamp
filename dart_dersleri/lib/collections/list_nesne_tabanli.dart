import 'package:dart_dersleri/collections/ogrenciler.dart';

void main() {
  var o1 = Ogrenciler(no: 100, ad: "Ali", sinif: "9C");
  var o2 = Ogrenciler(no: 201, ad: "Veli", sinif: "9A");
  var o3 = Ogrenciler(no: 302, ad: "Ahmet", sinif: "9B");

  var ogrencilerListesi = <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);
  print(ogrencilerListesi);

  for (var o in ogrencilerListesi) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }

  // Sorting
  print("--------------- Sayısal : Küçükten Büyüğe");
  Comparator<Ogrenciler> s1 = (x,y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(s1);
  for (var o in ogrencilerListesi) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }

  print("--------------- Sayısal : Büyükten Küçüğe");
  Comparator<Ogrenciler> s2 = (x,y) => y.no.compareTo(x.no);
  ogrencilerListesi.sort(s2);
  for (var o in ogrencilerListesi) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }

  print("--------------- Metinsel : Küçükten Büyüğe");
  Comparator<Ogrenciler> s3 = (x,y) => x.ad.compareTo(y.ad);
  ogrencilerListesi.sort(s3);
  for (var o in ogrencilerListesi) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }

  print("--------------- Metinsel : Büyükten Küçüğe");
  Comparator<Ogrenciler> s4 = (x,y) => y.ad.compareTo(x.ad);
  ogrencilerListesi.sort(s4);
  for (var o in ogrencilerListesi) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }

  // Filtreleme
  Iterable<Ogrenciler> f1 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.no > 100 && ogrenciNesnesi.no < 250;
  });
  var liste1 = f1.toList();
  print("--------------- Filtreleme Sayısal");
  for (var o in liste1) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }

  Iterable<Ogrenciler> f2 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.ad.contains("V");
  });
  var liste2 = f2.toList();
  print("--------------- Filtreleme Metinsel");
  for (var o in liste2) {
    print("No : ${o.no} - Adı : ${o.ad} - Sınıfı : ${o.sinif}");
  }
}