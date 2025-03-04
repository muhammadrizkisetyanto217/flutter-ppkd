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
    GoRoute(
      path: '/learn',
      builder: (context, state) => LearnPage(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => SearchPage(),
    ),
    GoRoute(
      path: '/other',
      builder: (context, state) => OtherPage(),
    ),
    GoRoute(
      path: '/stats',
      builder: (context, state) => StatsPage(),
    ),
    GoRoute(
      path: '/quiz',
      builder: (context, state) => QuizPage(),
    ),
  ],
);
