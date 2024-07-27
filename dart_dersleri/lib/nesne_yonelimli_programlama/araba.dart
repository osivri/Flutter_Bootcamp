class Araba {
  // Başına late ifadeside gelebilir, veri tipinin sonuna ? gelebilir
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba({required this.renk, required this.hiz, required this.calisiyorMu});

  // Side Effect -> Yan etki, fonksiyon çalışırken sınıf değerlerinin değişmesi
  void calistir(){
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur(){
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm){
    //hiz = hiz + kacKm;
    hiz+=kacKm;
  }

  void yavasla(int kacKm){
    //hiz = hiz - kacKm;
    hiz-=kacKm;
  }

  void bilgiAl(){
    print("***********");

    print("Renk : ${renk}");
    print("Hızı : ${hiz}");
    print("Çalışıyor mu? : ${calisiyorMu}");
  }
}