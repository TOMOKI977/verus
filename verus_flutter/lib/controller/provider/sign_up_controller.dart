import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:go_router/go_router.dart';
import 'package:verus_flutter/providers/auth_provider.dart';

class SignUpController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  String? selectedCountry;
  bool obscurePassword = true;
  bool isLoggedIn = false;

  // Lista de indicadores dinámicos para la contraseña
  List<Map<String, dynamic>> passwordHints = [
    {"text": "Mínimo 8 caracteres", "valid": false},
    {"text": "Incluye mayúsculas", "valid": false},
    {"text": "Incluye minúsculas", "valid": false},
    {"text": "Incluye números", "valid": false},
  ];

  // Validaciones
  String? validateName(String? value) =>
      (value == null || value.isEmpty) ? 'Campo requerido' : null;

  String? validateLastName(String? value) =>
      (value == null || value.isEmpty) ? 'Campo requerido' : null;

  String? validateCountry(String? value) =>
      (value == null || value.isEmpty) ? 'Selecciona un país' : null;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Campo requerido';
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) return 'Correo inválido';
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Campo requerido';
    if (value.length < 8) return 'Debe tener al menos 8 caracteres';
    if (!RegExp(r'[A-Z]').hasMatch(value)) return 'Debe incluir mayúsculas';
    if (!RegExp(r'[a-z]').hasMatch(value)) return 'Debe incluir minúsculas';
    if (!RegExp(r'[0-9]').hasMatch(value)) return 'Debe incluir números';
    return null;
  }

  // Actualiza los indicadores dinámicos de contraseña
  void updatePasswordHints(String value) {
    passwordHints = [
      {"text": "Mínimo 8 caracteres", "valid": value.length >= 8},
      {"text": "Incluye mayúsculas", "valid": RegExp(r'[A-Z]').hasMatch(value)},
      {"text": "Incluye minúsculas", "valid": RegExp(r'[a-z]').hasMatch(value)},
      {"text": "Incluye números", "valid": RegExp(r'[0-9]').hasMatch(value)},
    ];
  }

  // Opciones de país
  List<DropdownMenuItem<String>> get countryOptions => const [
    DropdownMenuItem(value: 'Bolivia', child: Text('🇧🇴 Bolivia')),
    DropdownMenuItem(value: 'Argentina', child: Text('🇦🇷 Argentina')),
    DropdownMenuItem(value: 'Chile', child: Text('🇨🇱 Chile')),
    DropdownMenuItem(value: 'Perú', child: Text('🇵🇪 Perú')),
    DropdownMenuItem(value: 'México', child: Text('🇲🇽 México')),
  ];

  void setCountry(String? value) {
    selectedCountry = value;
  }
}

final signUpFormKeyProvider = Provider((ref) => GlobalKey<FormState>());

final signUpControllerProvider =
    StateNotifierProvider<SignUpControllerNotifier, SignUpController>((ref) {
      return SignUpControllerNotifier(ref);
    });

class SignUpControllerNotifier extends StateNotifier<SignUpController> {
  final Ref ref;
  SignUpControllerNotifier(this.ref) : super(SignUpController());

  void togglePasswordVisibility() {
    state.obscurePassword = !state.obscurePassword;
    state = state; // trigger rebuild
  }

  void updatePasswordHints(String value) {
    state.updatePasswordHints(value);
    state = state; // trigger rebuild
  }

  Future<void> register(BuildContext context) async {
    await ref
        .read(authProvider.notifier)
        .register(
          state.emailController.text,
          state.passwordController.text,
          state.firstNameController.text,
          state.lastNameController.text,
          state.selectedCountry ?? '',
        );

    if (ref.read(authProvider).isLoggedIn) {
      state.isLoggedIn = true;
      context.go('/dashboard');
    }
    state = state;
  }
}
