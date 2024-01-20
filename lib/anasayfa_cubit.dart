import 'package:bloc_pattern_kullanimi/matematik_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class anasayfa_cubit extends Cubit<int>{

  anasayfa_cubit():super(0);

  var mrepo=matematik_repository();

  void toplamaYap(String alinanSayi1,String alinanSayi2){
   emit(mrepo.topla(alinanSayi1, alinanSayi2));
  }

  void carpmaYap(String alinanSayi1,String alinanSayi2){
    emit(mrepo.carpma(alinanSayi1, alinanSayi2));
  }
  }