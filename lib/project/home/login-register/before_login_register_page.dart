import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/main/buttons.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_ppkd/project/home/login-register/login_page.dart';
// import 'package:go_router/go_router.dart';

class BeforeLoginRegister extends StatelessWidget {
  const BeforeLoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Before Login tes"),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(24.0), // Add top padding,
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/Before-Login-Register.png',
            ),
            SizedBox(height: 32),
            const Spacer(),
            const Text(
              'Sebelum belajar daftar atau login terlebih dahulu',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff0E592C),
              ),
            ),
            const Spacer(),
            AppButton(
                text: 'Login',
                onPressed: () {
                  context.push('/login');
                },
                type: ButtonType.primary),
            const SizedBox(height: 16),
            AppButton(
                text: 'Daftar',
                onPressed: () {
                  context.push('/before_register');
                },
                type: ButtonType.secondary),
          ],
        ),
      ),
    );
  }
}
