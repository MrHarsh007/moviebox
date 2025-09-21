import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:intl/intl.dart';
import 'package:moviesbox/export.dart' hide showAdaptiveDialog;
import 'package:moviesbox/src/common_componenet/common_dialog.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/common_componenet/empty_widget.dart';
import 'package:moviesbox/src/presentation/bloc/note/note_bloc.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  void initState() {
    super.initState();
    final noteBloc = context.read<NoteBloc>();

    noteBloc.add(NoteEvent.fetchAll());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Notes', style: context.textTheme.headlineSmall),
        backgroundColor: Colors.transparent,
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              EvaIcons.plusSquareOutline,
              size: 32,
              color: Colors.white,
            ),
            onPressed: () => GoRouter.of(context).pushNamed(
              AppRoutes.markdownNotesName,
              queryParameters: {'is_new': 'true'},
            ),
          ),
        ],
      ),
      body: BlocConsumer<NoteBloc, NoteState>(
        listener: (context, state) {
          if (state.state.isError) {
            showCustomSnackBar(context, message: "", type: SnackBarType.error);
          }
        },
        builder: (context, state) {
          if (state.state.isLoading) {
            return CommonLoader();
          }
          return state.notes.isEmpty
              ? Center(
                  child: EmptyWidget(
                    title: 'No Notes',
                    subtitle: 'You have not created any notes yet.',
                    textTheme: context.textTheme,
                    icon: Icons.notes_outlined,
                  ),
                )
              : ListView.separated(
                  itemCount: state.notes.length,
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(color: Colors.grey),
                  ),
                  itemBuilder: (context, index) {
                    final note = state.notes[index];
                    return ListTile(
                      contentPadding: EdgeInsets.only(left: 20, bottom: 0),
                      title: Text(
                        note.title,
                        style: context.textTheme.titleLarge,
                      ),
                      subtitle: Text(
                        "Last updated: ${DateFormat('y MMMM d – h:mm:ss a').format(DateTime.fromMillisecondsSinceEpoch(note.updatedAt * 1000))}",
                        style: context.textTheme.bodyMedium,
                      ),
                      onTap: () => GoRouter.of(context).pushNamed(
                        AppRoutes.markdownNotesName,
                        queryParameters: {
                          'uid': note.uid,
                          'is_new': 'false',
                          "title": note.title,
                        },
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          showCommonAdaptiveDialog(
                            context: context,
                            confirmText: "Delete",
                            title: "Delete Note?",
                            content:
                                "Are you sure you want to delete this note? This action cannot be undone.",
                            onConfirm: () {
                              context.read<NoteBloc>().add(
                                NoteEvent.delete(note.uid),
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.delete_outline),
                      ),
                    );
                  },
                );
        },
      ),

      backgroundColor: Color(0XFF010100),
    );
  }
}
