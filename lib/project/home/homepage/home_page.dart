import 'package:flutter/material.dart';
// import 'package:flutter_ppkd/data/list_name.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // Kode ini digunakan untuk mengambil data yang dikirim melalui extra dalam GoRouterState
    final Map<String, String>? data =
        GoRouterState.of(context).extra as Map<String, String>?;

    String email = data?['email'] ?? 'Tidak ada email';
    String password = data?['password'] ?? 'Tidak ada password';
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Text('Email: $email'),
          Text('Password: $password'),
        ],
      ),
    );
  }
}
