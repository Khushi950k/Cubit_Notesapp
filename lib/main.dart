import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_notesapp/API/Newsapp.dart';
import 'package:provider_notesapp/Cubit_CounterApp/CounterApp.dart';
import 'package:provider_notesapp/Cubit_CounterApp/Counter_cubit.dart';
import 'package:provider_notesapp/Cubit_Notesapp/NotesApp.dart';
import 'package:provider_notesapp/Cubit_Notesapp/Notes_Cubit.dart';
import 'package:provider_notesapp/Getx/Counterapp.dart';
import 'package:provider_notesapp/Lets%20Move/splashscreen.dart';
import 'package:provider_notesapp/Provider_Notesapp/dbhelper.dart';
import 'package:provider_notesapp/Provider_Notesapp/notes_provider.dart';
import 'package:provider_notesapp/Provider_Notesapp/notesapp.dart';
import 'package:provider_notesapp/Tab_Bar/tab_bar.dart';

//Provider
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => NotesProvider(),
//       child: MaterialApp(debugShowCheckedModeBanner: false, home: NotesApp()),
//     );
//   }
// }
//Normal and getx
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//  return GetMaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        scaffoldBackgroundColor: Colors.white,
//        appBarTheme: AppBarTheme(
//          color: Color(0xFF075E55)
//        )
//      ),
//      home: Tab_Bar()
//  );
//
//   }
// }
//Cubit CounterApp
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MultiBlocProvider(
//       providers: [
//        BlocProvider(create: (_) => CounterCubit(),)
//       ],
//       child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//               scaffoldBackgroundColor: Colors.white,
//               appBarTheme: AppBarTheme(
//                   color: Color(0xFF075E55)
//               )
//           ),
//           home: CubitCounterApp()
//       ),
//     );
//   }
// }
//Cubit Notesapp
void main (){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>NotesCubit(dbHelper:DbHelper.instance),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:NotesApp()
      ),
    );
  }
}