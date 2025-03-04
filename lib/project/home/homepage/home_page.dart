import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/component/main/appbar.dart';
import 'package:flutter_ppkd/project/component/main/buttons.dart';
import 'package:flutter_ppkd/project/component/user/input_user_component.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _namaLengkapController = TextEditingController();
  final TextEditingController _namaPenggunaController = TextEditingController();
  bool _isButtonEnabled = false;
  @override
  void initState() {
    super.initState();
    _namaLengkapController.addListener(_checkInput);
    _namaPenggunaController.addListener(_checkInput);
  }

  void _checkInput() {
    setState(() {
      _isButtonEnabled = _namaLengkapController.text.isNotEmpty &&
          _namaPenggunaController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _namaLengkapController.dispose();
    _namaPenggunaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        titleText: "Data Diri Lanjutan",
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Tambahkan ini agar teks rata kiri
        children: [
          const SizedBox(height: 24),
          Text(
            "Untuk proses lebih lanjut mohon lengkapi data berikut",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama Lengkap",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0E592C),
                ),
              ),
              const SizedBox(height: 12),
              InputUser(
                labelText: 'Nama Lengkap',
                icon: Icons.person,
                controller: _namaLengkapController,
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: "Nama lengkap akan ",
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'JakartaSans', // Tambahkan font family di sini
                    color: Colors.black, // Warna teks default
                  ),
                  children: [
                    const TextSpan(
                      text: "tercantum",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Membuat teks bold
                        fontFamily:
                            'JakartaSans', // Tambahkan font family di sini
                      ),
                    ),
                    const TextSpan(
                      text: " pada ",
                    ),
                    const TextSpan(
                      text: "sertifikat.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Membuat teks bold
                        fontFamily:
                            'JakartaSans', // Tambahkan font family di sini
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(height: 20),
          Column(
            children: [
              Text(
                "Nama Pengguna",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff0E592C),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          InputUser(
            labelText: 'Nama Lengkap',
            icon: Icons.person,
            controller: _namaPenggunaController,
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: "Nama pengguna sebagai ",
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'JakartaSans', // Gunakan font yang sudah di-load
                color: Colors.black,
              ),
              children: [
                const TextSpan(
                  text: "nama panggilan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily:
                        'JakartaSans', // Font tetap harus disebutkan di sini jika berbeda style
                  ),
                ),
                TextSpan(
                  text: " pada aplikasi.",
                  style: const TextStyle(
                    fontFamily:
                        'JakartaSans', // Font tetap harus disebutkan di sini jika berbeda style
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),
          AppButton(
            text: 'Mulai Belajar',
            onPressed: _isButtonEnabled
                ? () {
                    log('Nama Lengkap: ${_namaLengkapController.text}');
                    log('Nama Pengguna: ${_namaPenggunaController.text}');
                    context.push('/quiz');
                  }
                : () {}, // Disable jika kosong
            type: _isButtonEnabled ? ButtonType.primary : ButtonType.secondary,
          ),
          // ),
        ],
      ),
    );
  }
}
