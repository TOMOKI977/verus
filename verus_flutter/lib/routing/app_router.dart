// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Importa tus screens
import 'package:verus_flutter/screens/landing/landing_screen.dart';
import 'package:verus_flutter/screens/landing/download/download_screen.dart';
import 'package:verus_flutter/screens/auth/sign_in_screen.dart';
import 'package:verus_flutter/screens/auth/sign_up_screen.dart';
import 'package:verus_flutter/screens/dashboard/dashboard_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // ===========================
    // Rutas públicas
    // ===========================
    GoRoute(
      path: '/',
      name: 'landing',
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/download',
      name: 'download',
      builder: (context, state) => const DownloadPage(),
    ),

    // ===========================
    // Rutas privadas (requieren login)
    // ===========================
    GoRoute(
      path: '/dashboard',
      name: 'dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
  ],
);
