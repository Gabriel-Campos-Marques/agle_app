import 'package:agle_app/models/pages.dart';
import 'package:agle_app/pages/dashBoard/dash_board_page.dart';
import 'package:agle_app/pages/notesPage/notes_page.dart';
import 'package:agle_app/pages/taskPage/task_page.dart';
import 'package:flutter/material.dart';

class PagesController extends ChangeNotifier {
  List<Pages> pages = [
    Pages(
      index: 0,
      page: const DashBoardPage(),
    ),
    Pages(
      index: 1,
      page: const DashBoardPage(),
    ),
    Pages(
      index: 2,
      page: const TaskPage(),
    ),
    Pages(
      index: 3,
      page: const NotesPage(),
    ),
  ];

  int _currentPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;

  void setCurrentPage(int index) {
    if (index >= 0 && index < pages.length) {
      _currentPageIndex = index;
      notifyListeners();
    }
  }

  Widget get currentPage => pages[_currentPageIndex].page;
}
