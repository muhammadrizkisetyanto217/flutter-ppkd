import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_ppkd/project/component/user/input_user_component.dart';
import 'package:flutter_ppkd/project/home/login-register/login_page.dart';

class ForgetPasswordEmail extends StatefulWidget {
  const ForgetPasswordEmail({super.key});

  @override
  State<ForgetPasswordEmail> createState() => _ForgetPasswordEmailState();
}

class _ForgetPasswordEmailState extends State<ForgetPasswordEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              "Insya Allah, kami akan bantu pulihkan akun",
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
            const SizedBox(height: 32),
            InputUser(labelText: 'Email', icon: Icons.email),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0961F5), // Warna tombol
                  foregroundColor:
                      Color.fromARGB(255, 255, 255, 255), // Warna teks
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Border radius tombol
                  ),
                ),
                label: const Text(
                  'Google',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Mau mencoba login ? ',
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
                              builder: (context) => LoginPage(),
                            ),
                          );
                          // print('Navigasi ke halaman pendaftaran');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
