import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/markdown_database_helper.dart';
import 'package:moviesbox/src/domain/entity/markdown_notes_model.dart';
import 'package:uuid/uuid.dart';

part 'note_state.dart';
part 'note_event.dart';
part 'note_bloc.freezed.dart';

@singleton
class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc() : super(NoteState.initial()) {
    on<NoteEvent>((event, emit) async {
      await event.when(
        resetContent: () async {
          emit(
            state.copyWith(
              state: RequestState.initial,
              contentJson: "",
              title: "",
              uid: "",
              createdAt: 0,
              isNew: true,
            ),
          );
        },
        load: (uid) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              uid: uid,
              contentJson: "",
            ),
          );
          await Future.delayed(const Duration(milliseconds: 500));
          final notes = await db.getAllNotes();
          final note = notes.where((n) => n.uid == uid).firstOrNull;

          if (note != null) {
            emit(
              state.copyWith(
                uid: note.uid,
                title: note.title,
                contentJson: note.data,
                createdAt: note.createdAt,
                isNew: false,
              ),
            );
          }
          emit(state.copyWith(state: RequestState.loadingMore));
        },
        titleChanged: (title) async {
          emit(state.copyWith(title: title, state: RequestState.initial));
        },
        contentChanged: (jsonContent) async {
          emit(
            state.copyWith(
              contentJson: jsonContent,
              state: RequestState.initial,
            ),
          );
        },
        saveNote: (data, String? type, int? movieId) async {
          if (state.title.trim().isEmpty) {
            emit(
              state.copyWith(
                error: "Title is empty",
                state: RequestState.error,
              ),
            );
            return;
          }

          emit(state.copyWith(isSaving: true, state: RequestState.loading));
          final ts = DateTime.now().millisecondsSinceEpoch ~/ 1000;

          final note = MarkdownNote(
            uid: state.uid.isEmpty ? Uuid().v4() : state.uid,
            id: movieId,
            type: type ?? 'note',
            title: state.title.trim(),
            data: data,
            createdAt: state.isNew ? ts : state.createdAt,
            updatedAt: ts,
          );

          if (state.isNew) {
            await db.insertNote(note);
          } else {
            await db.updateNoteByUid(note.uid, note);
          }

          await Future.delayed(const Duration(milliseconds: 500));

          emit(state.copyWith(isSaving: false, state: RequestState.updating));

          add(NoteEvent.fetchAll());
        },
        fetchAll: () async {
          emit(state.copyWith(state: RequestState.loading));
          final notes = await db.getAllNotes();
          emit(state.copyWith(notes: notes, state: RequestState.loaded));
        },
        delete: (String uid) async {
          await db.deleteNoteByUid(uid);
          add(NoteEvent.fetchAll());
        },
      );
    });
  }

  final db = MarkdownNoteDatabaseHelper();
}
