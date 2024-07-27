import 'package:flutter/material.dart';
import 'package:urunler_app/data/entities/urunler.dart';

class UrunDetay extends StatefulWidget {
  Urunler urun;


  UrunDetay({required this.urun});

  @override
  State<UrunDetay> createState() => _UrunDetayState();
}

class _UrunDetayState extends State<UrunDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.urun.ad),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.urun.resim}"),
            Text("${widget.urun.fiyat} ₺", style: const TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
