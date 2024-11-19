import 'package:agle_app/controllers/pages_controller.dart';
import 'package:agle_app/pages/menuBar/menu_bar_agle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.maxFinite,
        height: double.maxFinite,
        child: Row(
          children: [
            const MenuBarAgle(),
            Expanded(
              child: Consumer<PagesController>(
                builder: (context, pagesController, child) {
                  return pagesController.currentPage;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
