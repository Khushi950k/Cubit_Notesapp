import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider_notesapp/Cubit_Notesapp/Notes_Cubit.dart';
import 'package:provider_notesapp/Provider_Notesapp/notes_model.dart';
import 'package:provider_notesapp/Provider_Notesapp/uihelper.dart';
class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NotesApp"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.customTextField(titleController, 'Enter Title', Icons.title,1),
          UiHelper.customTextField(descController, 'Enter Description', Icons.description_outlined,1),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                var title = titleController.text.toString();
                var desc = descController.text.toString();
                context.read<NotesCubit>().addNote(NotesModel(title: title, desc: desc));
                Navigator.pop(context);

                context.read<NotesCubit>().fetchAllData();
              },
              child: Text('Save Data'))
        ],
      ),
    );
  }
}