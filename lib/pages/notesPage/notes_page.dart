import 'package:agle_app/pages/widgets/app_bar_agle.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            const AppBarAgle(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: secondColor,
                    border: Border.all(
                      width: 4,
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: AppFlowyEditor(
                  editorStyle: EditorStyle.desktop(
                    cursorWidth: 2.0,
                    cursorColor: Colors.blue,
                    selectionColor: Colors.grey.shade300,
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    maxWidth: 1000,
                  ),
                  editorState: EditorState.blank(),
                  enableAutoComplete: true,
                  editorScrollController: EditorScrollController(
                    editorState: EditorState(document: Document.blank()),
                    shrinkWrap: false,
                  ),
                  dropTargetStyle: const AppFlowyDropTargetStyle(
                    color: Colors.red,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Image.asset(
                      'assets/images/logo_agle.jpg',
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
