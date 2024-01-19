import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_notesapp/Cubit_Notesapp/Notes_Cubit.dart';
import 'package:provider_notesapp/Cubit_Notesapp/Notes_state.dart';
import 'package:provider_notesapp/Cubit_Notesapp/addData.dart';
import 'package:provider_notesapp/Provider_Notesapp/notes_model.dart';
import 'package:provider_notesapp/Provider_Notesapp/uihelper.dart';

class NotesApp extends StatefulWidget {
  const NotesApp({super.key});

  @override
  State<NotesApp> createState() => _NotesAppState();
}

class _NotesAppState extends State<NotesApp> {
  TextEditingController tController = TextEditingController();
  TextEditingController dController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<NotesCubit>().fetchAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NotesApp', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddData()));
          },
          child: Icon(Icons.add),
        ),
        body: BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ErrorState) {
              return Text('${state.errorMsg}');
            } else if (state is LoadedState) {
              return ListView.builder(
                  itemCount: state.arrayNotes!.length,
                  itemBuilder: (context, _) {
                    final currentData = state.arrayNotes![_];
                    return InkWell(
                      onTap: () {
                        tController.text = currentData.title;
                        dController.text = currentData.desc;
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: Container(
                                  width: double.infinity,
                                  height: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15)),
                                      color: Colors.white),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        UiHelper.customTextField(
                                            tController, 'title', Icons.title,1),
                                        UiHelper.customTextField(dController,
                                            'Description',
                                            Icons.description_outlined,1),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green),
                                            onPressed: () {
                                              var title =
                                              tController.text.toString();
                                              var desc =
                                              dController.text.toString();
                                              context
                                                  .read<NotesCubit>()
                                                  .updateData(NotesModel(
                                                  title: title,
                                                  desc: desc,
                                                  id: currentData.id));
                                              Navigator.pop(context);

                                              context
                                                  .read<NotesCubit>()
                                                  .fetchAllData();
                                            },
                                            child: Text('UpdateData'))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: ListTile(
                        leading: Text('${currentData.id}'),
                        title: Text(currentData.title),
                        subtitle: Text(currentData.desc),
                        trailing: IconButton(
                          onPressed: () {
                            context
                                .read<NotesCubit>()
                                .deletData(currentData.id as int);
                            context.read<NotesCubit>().fetchAllData();
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ),
                    );
                  });
            } else {
              return Center(child: Text('Add New Notes'));
            }
          },
        ));
  }
}
