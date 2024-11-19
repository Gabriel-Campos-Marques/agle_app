import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 400,
        height: 55,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 54, 84, 134),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Entrar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
