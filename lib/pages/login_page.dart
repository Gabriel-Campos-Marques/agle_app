import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                './assets/images/login_backgroud.jpg',
              ),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Container(
            height: 800,
            width: 500,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 204, 224, 255),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 139, 220, 255),
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 191,
                  width: 284,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(265),
                    image: const DecorationImage(
                        image: AssetImage('./assets/images/logo_agle.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                const Text(
                  'Faça login para continuar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
