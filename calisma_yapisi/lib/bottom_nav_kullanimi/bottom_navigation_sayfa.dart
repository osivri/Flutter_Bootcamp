import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa1.dart';
import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa2.dart';
import 'package:calisma_yapisi/bottom_nav_kullanimi/sayfa3.dart';
import 'package:flutter/material.dart';

class ButtomNavigationSayfa extends StatefulWidget {
  const ButtomNavigationSayfa({super.key});

  @override
  State<ButtomNavigationSayfa> createState() => _ButtomNavigationSayfaState();
}

class _ButtomNavigationSayfaState extends State<ButtomNavigationSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const Sayfa1(), const Sayfa2(), const Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation"),backgroundColor: Colors.deepPurple,),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined), label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined), label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined), label: "Üç"),
        ],
        currentIndex: secilenIndex,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        onTap: (indeks){
          setState(() {
            secilenIndex = indeks;
          });
        },
      ),
    );
  }
}
