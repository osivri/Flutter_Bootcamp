import 'package:dart_dersleri/nesne_yonelimli_programlama/kalitim/Ev.dart';

class Villa extends Ev{
  bool garajVarMi;

  Villa({required this.garajVarMi, required int pencereSayisi}) : super(pencereSayisi: pencereSayisi);
}