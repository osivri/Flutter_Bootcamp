import 'dart:collection';

void main(){
  // Tanımlama -> Sıralama yoktur! Aynı değer tekrar eklenmez!
  var plakalar = HashSet.from([16,23,6]);
  var meyveler = HashSet<String>();

  // Değer atama
  meyveler.add("Kiraz");
  meyveler.add("Muz");
  meyveler.add("Elma");
  print(meyveler);

  meyveler.add("Elma");
  print(meyveler);

  meyveler.add("Kivi");
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);

  print("Boyut : ${meyveler.length}");
  print("Boş kontrol : ${meyveler.isEmpty}");

  for(var meyve in meyveler){
    print("Sonuç : ${meyve}");
  }
  
  for(var i = 0; i < meyveler.length; i++){
    print("$i - ${meyveler.elementAt(i)}");
  }

  // Silme
  meyveler.remove("Elma");
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}