import 'package:agle_app/pages/widgets/drawer_agle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Row(
        children: [
          const DrawerAgle(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
          )
        ],
      ),
    ));
  }
}
