import 'package:dart_dersleri/nesne_yonelimli_programlama/kalitim/Ev.dart';

class Saray extends Ev{
  int kuleSayisi;

  Saray({required this.kuleSayisi, required int pencereSayisi}) : super(pencereSayisi: pencereSayisi);
}