import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_flutter/modules/counter/cuibt/state.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(CounterInitialState());

  int counter = 1;
  static CounterCubit get(context) =>BlocProvider.of(context);


  void plus(){
    counter++;
    emit(CounterPlusState());
  }
  void minus(){
    counter--;
    emit(CounterMinusState());
  }
}