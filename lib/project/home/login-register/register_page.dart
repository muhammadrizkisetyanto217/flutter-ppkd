import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/main/buttons.dart';
import 'package:flutter_ppkd/project/component/user/input_user_component.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_ppkd/project/component/main/buttons.dart';

// import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/Image.png', // Path ke logo lokal
              width: 40, // Sesuaikan ukuran gambar
              height: 40,
            ),
            const SizedBox(width: 15),
            const Text(
              "Register",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daftar dengan Email",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0E592C),
                ),
              ),
              Text(
                "Untuk proses lebih lanjut mohon lengkapi data berikut",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              InputUser(labelText: 'Email', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              InputUser(
                controller: passwordController,
                labelText: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              InputUser(
                controller: passwordController,
                labelText: 'Konfirmasi Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              AppButton(
                text: 'Daftar',
                onPressed: () {},
                type: ButtonType.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Sudah punya akun? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Warna teks utama
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color:
                              Color(0xff0E592C), // Warna biru sesuai permintaan
                          decoration: TextDecoration.underline, // Garis bawah
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.push('/login');
                          },
                      ),
                    ],
                  ),
                ),
              ),
              // const Spacer(),
              const SizedBox(
                height: 20,
              ),
              // Center(
              //   child: Text(
              //     "By creating an account, you agree to EduLearn's Terms & Conditions and Privacy Policy",
              //     textAlign: TextAlign.center,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
