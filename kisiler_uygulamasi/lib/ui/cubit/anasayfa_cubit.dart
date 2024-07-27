import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';

import '../../data/entity/kisiler.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>>{
  AnasayfaCubit():super(<Kisiler>[]);

  var krepo = KisilerDaoRepository();

  Future<void> ara(String aramaKelimesi) async{
    var liste = await krepo.ara(aramaKelimesi);
    emit(liste);
  }

  Future<void> kisileriYukle() async{
    var liste = await krepo.kisileriYukle();
    emit(liste);
  }

  Future<void> silme(int kisi_id) async{
    await krepo.silme(kisi_id);
    await kisileriYukle();
  }
}