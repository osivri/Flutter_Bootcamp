void main(){
  int yas = 17;
  String isim = "Mehmet";

  if(yas >= 18){
    print("Reşitsiniz");
  }else{
    print("Reşit değilsiniz");
  }

  if(isim == "Ahmet"){
    print("Merhaba Ahmet");
  }else if(isim == "Mehmet"){
    print("Merhaba Mehmet");
  }else{
    print("Tanınmayan Kişi");
  }

  String ka = "admin";
  int s = 123456;

  if(ka == "admin"&& s == 123456){
    print("Hoşgeldiniz");
  }else{
    print("Hatalı Giriş");
  }

  int sayi = 10;

  if(sayi == 9 || sayi == 10){
    print("Sayı 9 veya 10'dur");
  }else{
    print("Sayı 9 veya 10 değildir");
  }
}