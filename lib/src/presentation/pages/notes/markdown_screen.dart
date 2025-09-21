import 'dart:convert';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/presentation/bloc/note/note_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';

class MarkdownScreen extends StatefulWidget {
  final String? uid;
  final bool isNew;
  final String? title;
  final int? movieId;
  final String? type;
  const MarkdownScreen({
    super.key,
    this.uid,
    this.title,
    this.movieId,
    this.isNew = false,
    this.type = "note",
  });

  @override
  State<MarkdownScreen> createState() => MarkdownScreenState();
}

class MarkdownScreenState extends State<MarkdownScreen> {
  late QuillController _controller;
  late TextEditingController _titleController;
  bool _controllerInitialized = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    if (widget.uid != null) {
      // Load existing note if uid is provided
      context.read<NoteBloc>().add(NoteEvent.load(uid: widget.uid ?? ""));
    } else {
      // Reset content for new note
      context.read<NoteBloc>().add(NoteEvent.resetContent());
    }

    _controller = QuillController.basic();
    _titleController = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    _titleController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteBloc, NoteState>(
      listenWhen: (prev, cur) =>
          prev.state != cur.state || (prev.isSaving && !cur.isSaving),
      listener: (ctx, st) {
        if (st.state.isError) {
          showCustomSnackBar(
            ctx,
            message: st.error ?? "",
            type: SnackBarType.error,
          );
        } else if (st.state.isUpdating) {
          Navigator.of(context).pop();
        }
        if (st.state.isLoadingMore) {
          // Initialize UI when note is loaded
          if (!_controllerInitialized && st.contentJson.isNotEmpty) {
            final doc = Document.fromDelta(
              Delta.fromJson(jsonDecode(st.contentJson)),
            );
            _controller = QuillController(
              document: doc,
              selection: const TextSelection.collapsed(offset: 0),
            );
            _titleController.text = st.title;
            _controllerInitialized = true;
          }
        }
      },
      builder: (ctx, st) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: false,
            title: Text(
              st.title.isEmpty ? "New Note" : st.title,
              style: context.textTheme.titleLarge?.copyWith(fontSize: 22),
            ),
            actions: [
              IconButton(
                onPressed: () => _focusNode.hasFocus
                    ? FocusScope.of(context).unfocus()
                    : null,
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
              IconButton(
                icon: st.isSaving ? CommonLoader() : const Icon(Icons.save),
                onPressed: st.isSaving
                    ? null
                    : () {
                        debugPrint(
                          "Saving note with title: ${_titleController.text}",
                        );
                        ctx.read<NoteBloc>().add(
                          NoteEvent.saveNote(
                            data: jsonEncode(
                              _controller.document.toDelta().toJson(),
                            ),
                            type: widget.type,
                          ),
                        );
                      },
              ),
            ],
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              children: [
                // Title Input
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      hintText: "Enter note title...",
                      hintStyle: context.textTheme.bodyLarge,
                      border: const UnderlineInputBorder(),
                    ),
                    onChanged: (t) =>
                        ctx.read<NoteBloc>().add(NoteEvent.titleChanged(t)),
                  ),
                ),

                // Editor Toolbar
                Theme(
                  data: Theme.of(context).copyWith(
                    textTheme: Theme.of(context).textTheme.copyWith(
                      bodyMedium: const TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                    colorScheme: ColorScheme.fromSwatch().copyWith(
                      primary: Colors.red,
                    ),
                    iconButtonTheme: IconButtonThemeData(
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.white,
                        disabledForegroundColor: Colors.grey,
                      ),
                    ),
                    iconTheme: IconThemeData(color: Colors.white),
                  ),
                  child: QuillSimpleToolbar(
                    controller: _controller,
                    config: const QuillSimpleToolbarConfig(
                      toolbarSize: 45,
                      showSuperscript: false,
                      showSubscript: false,
                      showLink: false,
                      showSearchButton: false,
                      multiRowsDisplay: false,
                      showColorButton: false,
                      showBackgroundColorButton: false,
                      showCodeBlock: false,
                      showListCheck: false,
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Editor Area
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: QuillEditor.basic(
                      controller: _controller,
                      focusNode: _focusNode,
                      config: QuillEditorConfig(
                        scrollable: true,
                        expands: true,
                        onTapOutsideEnabled: true,
                        onLaunchUrl: (url) => launchUrl(Uri.parse(url)),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
