import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/user/input_user_component.dart';
import 'package:flutter_ppkd/project/home/login-register/forget_password_email_page.dart';
import 'package:flutter_ppkd/routes/pages.dart';
// import 'package:flutter_ppkd/project/home/login-register/register_page.dart';
import 'dart:developer';

import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

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
              "Login",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
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
                "Ahlan wa Sahlan  2!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0961F5),
                ),
              ),
              Text(
                "Alhamdulillah bisa bertemu kembali, Login untuk melanjutkan pembelajaran",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InputUser(
                controller: emailController,
                labelText: 'Email',
                icon: Icons.email,
              ),
              const SizedBox(
                height: 20,
              ),
              InputUser(
                controller: passwordController,
                labelText: 'Password',
                icon: Icons.lock,
                obscureText: true, // Mengaktifkan mode password
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPasswordEmail()),
                    );
                  },
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(
                      color: Color(0xFF0961F5),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    String email = emailController.text;
                    String password = passwordController.text;

                    log('Email: $email');
                    log('Password: $password');

                    context.push('/home',
                        extra: {'email': email, 'password': password});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0961F5), // Warna tombol
                    foregroundColor: Colors.white, // Warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Tambahkan border radius jika ingin
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 24),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16), // Jarak antara Divider dan teks
                      child: Text(
                        'Atau', // Ganti teks sesuai kebutuhan
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 245, 245, 245), // Warna tombol
                    foregroundColor: Color(0xFF0961F5), // Warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Border radius tombol
                    ),
                  ),
                  icon: Image.asset(
                    'assets/icon/icons-google.png',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text(
                    'Google',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, // Warna teks utama
                    ),
                    children: [
                      TextSpan(
                        text: 'Daftar',
                        style: TextStyle(
                          fontSize: 16,
                          color:
                              Color(0xFF0961F5), // Warna biru sesuai permintaan
                          decoration: TextDecoration.underline, // Garis bawah
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                            // print('Navigasi ke halaman pendaftaran');
                          },
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Text(
                  "By creating an account, you agree to EduLearn's Terms & Conditions and Privacy Policy",
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
