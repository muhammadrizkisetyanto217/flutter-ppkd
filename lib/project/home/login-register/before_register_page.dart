import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/main/buttons.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_ppkd/project/home/login-register/login_page.dart';
// import 'package:go_router/go_router.dart';

class BeforeRegisterPage extends StatelessWidget {
  const BeforeRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Before Login tes"),
      // ),
      body: Column(
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/Before-Login-Register.png',
          ),
          SizedBox(height: 32),
          const Spacer(),
          const Text(
            'Terdapat dua pilihan pendaftaran',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xff0E592C),
            ),
          ),
          const Spacer(),
          AppButton(
              text: 'Daftar dengan Email',
              onPressed: () {
                context.go('/register');
              },
              type: ButtonType.primary),
          const SizedBox(height: 16),
          AppButton(
              text: 'Daftar dengan google',
              onPressed: () {
                // context.go();
              },
              type: ButtonType.secondary),
        ],
      ),
    );
  }
}
