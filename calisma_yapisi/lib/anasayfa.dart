import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  // Uygulama ilk açıldığında bir kere çalışır.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<int> toplama(int sayi1, int sayi2) async{
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    print("build() çalıştı");
    
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac + 1;
              });
            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Oğuzhan", yas: 29, boy: 1.85, bekar: false);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OyunEkrani(kisi: kisi))).then((value){
                print("Anasayfaya dönüldü");
              });
            }, child: const Text("Başla")),
            Visibility(visible: kontrol, child: const Text("Merhaba")),
            Text(kontrol ? "Merhaba" : "Güle Güle", style: TextStyle(color: kontrol ? Colors.blue : Colors.red),),
            ((){
              if(kontrol){
                return const Text("Merhaba", style: TextStyle(color: Colors.blue),);
              }else{
                return const Text("Güle Güle", style: TextStyle(color: Colors.red),);
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac + 1;
              });
            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;
              });
            }, child: const Text("Durum 1 (True)")),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = false;
              });
            }, child: const Text("Durum 1 (False)")),
            FutureBuilder<int>(
              future: toplama(29, 21),
              builder: (context, snapshot){
                if(snapshot.hasError){
                  return const Text("Hata Oluştu");
                }
                if(snapshot.hasData){
                  return Text("Sonuç : ${snapshot.data}");
                }else{
                  return const Text("Sonuç Yok");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
