import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({super.key});

  @override
  State<Sayfa3> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Sayfa 3", style: TextStyle(fontSize: 30, color: Colors.black54),),
    );
  }
}
