Future<void> main() async {
  print("Verilerin alınması bekleniyor...");
  var veri = await veritabanindanVeriAl();
  print("Alınan Veri : ${veri}");
}

// Async işlem
Future<String> veritabanindanVeriAl() async {
  for(var i = 1; i < 6; i++){
    Future.delayed(Duration(seconds: i), () => print("Veri Miktarı : %${i*20}"));
  }
  return Future.delayed(Duration(seconds: 5), () => "Merhaba");
}