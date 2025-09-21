part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState({
    required RequestState state,
    required String uid,
    required String title,
    required String contentJson,
    required bool isNew,
    required bool isSaving,
    required String? error,
    required int createdAt,
    required List<MarkdownNote> notes,
  }) = _NoteState;

  factory NoteState.initial() => const NoteState(
    state: RequestState.initial,
    contentJson: '',
    isNew: true,
    isSaving: false,
    uid: '',
    title: '',
    error: null,
    createdAt: 0,
    notes: [],
  );
}
