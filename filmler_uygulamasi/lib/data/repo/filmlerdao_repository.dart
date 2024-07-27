import 'package:filmler_uygulamasi/sqlite/veritabani_yardimcisi.dart';

import '../filmler.dart';

class FilmlerDaoRepository{
  Future<List<Filmler>> filmleriYukle() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM filmler");
    return List.generate(maps.length, (indeks){
      var satir = maps[indeks];
      return Filmler(id: satir["id"], ad: satir["ad"], resim: satir["resim"], fiyat: satir["fiyat"]);
    });
  }
}