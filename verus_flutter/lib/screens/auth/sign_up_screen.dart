import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:verus_flutter/providers/auth_provider.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final countryController = TextEditingController();

    Future<void> _register() async {
      await ref
          .read(authProvider.notifier)
          .register(
            emailController.text,
            passwordController.text,
            firstNameController.text,
            lastNameController.text,
            countryController.text,
          );

      if (ref.read(authProvider).isLoggedIn) {
        Navigator.pushNamed(context, '/dashboard');
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Registro')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextFormField(
              controller: lastNameController,
              decoration: const InputDecoration(labelText: 'Apellido'),
            ),
            TextFormField(
              controller: countryController,
              decoration: const InputDecoration(labelText: 'País'),
            ),
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
            ElevatedButton(
              onPressed: _register,
              child: const Text('Registrarse'),
            ),
            if (authState.isLoggedIn)
              const Text('Registro exitoso, sesión iniciada'),
          ],
        ),
      ),
    );
  }
}
