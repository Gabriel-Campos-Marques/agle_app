import 'package:agle_app/models/model.login.dart';
import 'package:agle_app/pages/widgets/button_login_platform.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      ModelLogin loginModel = ModelLogin(username: email, password: password);
      await loginModel.login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./assets/images/login_backgroud.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Container(
            height: 700,
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
                  color: Colors.grey.withAlpha(128),
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 151,
                  width: 254,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(265),
                    image: const DecorationImage(
                        image: AssetImage('./assets/images/logo_agle.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                const Text(
                  'Faça login para continuar',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Senha',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                          onPressed: _handleLogin,
                          child: const Text('Login'),
                        ),
                      ),
                      const Text(
                        'Ou prossiga com:',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const ButtonLoginPlatform(
                          label: 'Google',
                          iconImage: './assets/images/google.png'),
                      const ButtonLoginPlatform(
                          label: 'Apple',
                          iconImage: './assets/images/apple.png'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Esqueci minha senha',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 54, 84, 134),
                                  decorationThickness: 0.5,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color.fromARGB(
                                      255, 54, 84, 134), // Cor do sublinhado
                                ),
                              )),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '|',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 54, 84, 134),
                              ),
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              'Cadastre-se',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 54, 84, 134),
                                decorationThickness: 0.5,
                                decoration: TextDecoration.underline,
                                decorationColor: Color.fromARGB(
                                    255, 54, 84, 134), // Cor do sublinhado
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
