import 'package:bloc/bloc.dart';
import 'package:provider_notesapp/Cubit_Notesapp/Notes_state.dart';
import 'package:provider_notesapp/Provider_Notesapp/dbhelper.dart';
import 'package:provider_notesapp/Provider_Notesapp/notes_model.dart';

class NotesCubit extends Cubit<NotesState> {
  DbHelper dbHelper;
  NotesCubit({required this.dbHelper}) : super(InitialState());

  addNote(NotesModel notesModel) async {
    bool check = await dbHelper.insertData(notesModel);
    if (check) {
      var note = await dbHelper.getData();
      emit(LoadedState(arrayNotes: note));
    }
  }

  fetchAllData() async {
    emit(LoadingState());
    var db = await dbHelper.getData();
    emit(LoadedState(arrayNotes: db));
  }
  updateData(NotesModel notesModel)async{
    var db = await dbHelper.updateData(notesModel);
    if (db){
      var note = await dbHelper.getData();
      emit(LoadedState(arrayNotes: note));
    }
  }

  deletData(int id) async {
    bool db = await dbHelper.deleteNotes(id);
    if (db) {
      var note = await dbHelper.getData();
      emit(LoadedState(arrayNotes: note));
    }
  }
}