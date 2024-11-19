import 'package:flutter/material.dart';

class TextFielLogin extends StatefulWidget {
  final bool isPassWord;
  final String label;

  const TextFielLogin({
    super.key,
    required this.label,
    this.isPassWord = false,
  });

  @override
  State<TextFielLogin> createState() => _TextFielLoginState();
}

class _TextFielLoginState extends State<TextFielLogin> {
  bool _isPassWordVisibility = false;

  void _togglePassWordVisibility() {
    setState(() {
      _isPassWordVisibility = !_isPassWordVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          obscureText: widget.isPassWord && !_isPassWordVisibility,
          decoration: InputDecoration(
            suffixIcon: widget.isPassWord
                ? IconButton(
                    onPressed: _togglePassWordVisibility,
                    icon: const Icon(Icons.visibility),
                  )
                : null,
            border: InputBorder.none,
            label: Text(
              widget.label,
              style: const TextStyle(
                color: Color.fromARGB(255, 54, 84, 134),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
