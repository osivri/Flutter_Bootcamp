import 'package:filmler_uygulamasi/data/filmler.dart';
import 'package:filmler_uygulamasi/data/repo/filmlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<List<Filmler>> {
  AnasayfaCubit():super(<Filmler>[]);

  var krepo = FilmlerDaoRepository();

  Future<void> filmleriYukle() async {
    var liste = await krepo.filmleriYukle();
    emit(liste);
  }
}