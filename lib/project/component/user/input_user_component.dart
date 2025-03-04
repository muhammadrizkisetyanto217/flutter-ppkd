import 'package:flutter/material.dart';

class InputUser extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText; // Label dinamis
  final IconData icon; // Ikon dinamis
  final bool obscureText; // Menyembunyikan teks untuk password

  const InputUser({
    super.key,
    this.controller,
    required this.labelText,
    required this.icon,
    this.obscureText = false, // Default tidak disembunyikan
  });

  @override
  InputUserState createState() => InputUserState();
}

class InputUserState extends State<InputUser> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText;
  }

  void toggleObscure() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextField(
        obscureText: isObscured,
        controller: widget.controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: widget.labelText,
          prefixIcon: Icon(
            widget.icon,
            color: Colors.grey,
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    isObscured ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: toggleObscure,
                )
              : null, // Jika bukan password, tidak ada suffix icon
        ),
      ),
    );
  }
}
