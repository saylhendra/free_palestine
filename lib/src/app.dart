import 'package:flutter/material.dart';
import 'package:free_palestine/src/news_detail_screen.dart';
import 'package:go_router/go_router.dart';

import 'home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: true,
      title: 'Free Free palestine 🇵🇸',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.redAccent,
          elevation: 4.0,
          shadowColor: Colors.black,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: Colors.red,
        ),
        useMaterial3: true,
      ),
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail',
      name: 'detail',
      builder: (context, state) {
        var exstra = state.extra as Map<String, dynamic>?;
        return NewsDetailScreen(
          idNews: exstra?['idNews'] ?? '0',
        );
      },
    ),
  ],
);
