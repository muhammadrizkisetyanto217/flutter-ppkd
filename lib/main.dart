import 'package:flutter/material.dart';

import 'package:flutter_ppkd/routes/app_router.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';

// import 'package:flutter_ppkd/providers/theme_provider.dart';
// import 'package:flutter_ppkd/router/app_router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      color: themeProvider.themeMode == ThemeMode.light
          ? Colors.white
          : Colors.black,
      child: Padding(
        // Tambahkan padding di sini
        padding: EdgeInsets.all(16),
        child: MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: Brightness.light,
            fontFamily: 'JakartaSans',
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white, // Warna utama saat Light Mode
              brightness: Brightness.light,
            ),
            // useMaterial3: false,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
            // useMaterial3: false,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black, // Warna utama saat Dark Mode
              brightness: Brightness.dark,
            ),
          ), // Tema gelap
          themeMode: themeProvider.themeMode, // Gunakan tema dari provider
          routerConfig: appRouter,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
