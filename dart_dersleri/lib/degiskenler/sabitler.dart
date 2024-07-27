void main(){
  // Sabitler
  // final ve const -> Java - final , Swift - let, Kotlin - val

  int sayi = 30;
  print(sayi);
  sayi = 100;
  print(sayi);

  // Kodlama çalıştığında hafızada oluşur.
  final int numara = 100;
  print("Sabit Sayı : $numara");
  // numara = 200; hata! 1 kere değer atanabilir!

  const int sonuc = 500;
  print(sonuc);
  // sonuc = 600; hata! 1 kere değer atanabilir!
}