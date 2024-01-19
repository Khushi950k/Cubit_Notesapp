import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = 0.obs;
    return Scaffold(
     appBar: AppBar(
       title: Text("Counter App", style: TextStyle(color: Colors.white),),
       centerTitle: true,
     ),
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("$count", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Row(
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () => count ++,
              ),
             SizedBox(width: 10,),
             FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () => count --,
              )
            ],
          ),
        ),
    );
  }
}
