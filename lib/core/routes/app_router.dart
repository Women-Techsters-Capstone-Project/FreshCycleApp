import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      // Placeholder for next screen based on wireframes
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Onboarding Page Coming Next!')),
        ),
      ),
    ],
  );
}