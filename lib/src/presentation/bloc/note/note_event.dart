part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  // Initial
  const factory NoteEvent.resetContent() = _ResetContent;
  const factory NoteEvent.load({required String uid}) = _Load;
  const factory NoteEvent.titleChanged(String title) = _TitleChanged;
  const factory NoteEvent.contentChanged(String jsonContent) = _ContentChanged;
  const factory NoteEvent.saveNote({
    required String data,
    String? type,
    int? movieId,
  }) = _SaveNote;

  // Fetch all notes
  const factory NoteEvent.fetchAll() = _FetchAll;

  // Delete note by id
  const factory NoteEvent.delete(String uid) = _Delete;
}
