import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:verus_flutter/providers/auth_provider.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    Future<void> login() async {
      await ref
          .read(authProvider.notifier)
          .login(
            emailController.text,
            passwordController.text,
          );

      if (ref.read(authProvider).isLoggedIn) {
        // Aquí navegas a tu dashboard o landing privada
        Navigator.pushNamed(context, '/dashboard');
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar sesión')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Correo'),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: login, child: const Text('Ingresar')),
            if (authState.isLoggedIn)
              const Text('Sesión iniciada correctamente'),
          ],
        ),
      ),
    );
  }
}
