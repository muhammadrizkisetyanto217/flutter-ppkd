// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages.dart'; // Import semua screen dari satu file

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => WelcomePage()),
    GoRoute(
        path: '/before_login_register',
        builder: (context, state) => BeforeLoginRegister()),
    GoRoute(
      path: '/before_register',
      builder: (context, state) => BeforeRegisterPage(),
    ),
    GoRoute(path: '/register', builder: (context, state) => RegisterPage()),
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    // GoRoute(
    //   path: '/quiz/:id',
    //   builder: (context, state) {
    //     final String quizId = state.pathParameters['id']!;
    //     return QuizPage(quizId: quizId);
    //   },
    // ),
    // Tambahkan route lainnya di sinib

    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
  ],
);
