void main(){
  // Null Safety - Nullable - Optional(Swift)
  // null : nil(Swift) : NaN
  String str = "Merhaba";

  // Nullable Tanımlama
  String? mesaj = null;

  // Yöntem 1
  print("Yöntem 1 : ${mesaj?.toUpperCase()}"); // Soru işaretinde değer gelebilir, gelmezse problem yok

  // Yöntem 2
  print("Yöntem 2 : ${mesaj!.toUpperCase()}"); // Soru işaretinde değer gelmeli!

  // Yöntem 3
  if(mesaj != null){
    print("Yöntem 3 : ${mesaj.toUpperCase()}");
  }else{
    print("Mesaj null!");
  }
}