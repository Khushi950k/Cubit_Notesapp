import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_notesapp/Cubit_CounterApp/Counter_cubit.dart';
import 'package:provider_notesapp/Cubit_CounterApp/Counter_state.dart';


class CubitCounterApp extends StatefulWidget {
  const CubitCounterApp({Key? key}) : super(key: key);

  @override
  State<CubitCounterApp> createState() => _CubitCounterAppState();
}

class _CubitCounterAppState extends State<CubitCounterApp> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            title: Text("Counter App",style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
          body: Center(child: Text("${state.count}", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
          floatingActionButton: FloatingActionButton(onPressed: (){
            context.read<CounterCubit>().Increment();
          },child: Icon(Icons.add),),
        );
      },

    );
  }
}
