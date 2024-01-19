import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_notesapp/Cubit_CounterApp/Counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterState());
  Increment(){
   final count = state.count+1;
   final updatedvalue = CounterState(count: count);
   emit(updatedvalue);
  }
}