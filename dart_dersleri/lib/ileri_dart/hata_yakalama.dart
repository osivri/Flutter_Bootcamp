void main(){
  // 1. Compile Error -> Kodlamayı yazarken alınan hatalar.
  String x = "Hello";
  // x = 10;

  // Runtime Exception -> Çalışır zamanda oluşan hatalar
  var liste = <String>[];
  liste.add("Ahmet"); // 0.
  liste.add("Zeynep"); // 1.



  try{
    String isim = liste[0];
    print("Gelen isim : ${isim}");
  }catch(e){
    print("Listenin boyutunu aştınız");
  }finally{
    print("Her şekilde çalışır!");
  }
}