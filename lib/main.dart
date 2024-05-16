import 'package:agle_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const AgleAPP());
}

class AgleAPP extends StatelessWidget {
  const AgleAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agle',
      theme: themeApp,
      home: const HomePage(),
    );
  }
}
