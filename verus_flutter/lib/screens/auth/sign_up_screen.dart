import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:verus_flutter/controller/provider/sign_up_controller.dart';
import 'package:verus_flutter/widgets/web_layout.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(signUpControllerProvider);
    final formKey = ref.watch(signUpFormKeyProvider);

    final isMobile = MediaQuery.of(context).size.width < 600;

    return WebLayout(
      showHeader: !isMobile,
      showFooter: !isMobile,
      child: Form(
        key: formKey,
        child: ListView(
          shrinkWrap: true,
          children: [
            // Nombre y Apellido adaptativos
            if (isMobile) ...[
              TextFormField(
                controller: controller.firstNameController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Jhon',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                maxLength: 80,
                validator: controller.validateName,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: controller.lastNameController,
                decoration: const InputDecoration(
                  labelText: 'Apellido',
                  hintText: 'Doe',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                maxLength: 120,
                validator: controller.validateLastName,
              ),
            ] else ...[
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: controller.firstNameController,
                      decoration: const InputDecoration(
                        labelText: 'Nombre',
                        hintText: 'Jhon',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      maxLength: 80,
                      validator: controller.validateName,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: controller.lastNameController,
                      decoration: const InputDecoration(
                        labelText: 'Apellido',
                        hintText: 'Doe',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      maxLength: 120,
                      validator: controller.validateLastName,
                    ),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 12),

            // País
            DropdownButtonFormField<String>(
              value: controller.selectedCountry,
              isExpanded: true,
              decoration: const InputDecoration(labelText: 'País'),
              items: controller.countryOptions,
              onChanged: controller.setCountry,
              validator: controller.validateCountry,
            ),
            const SizedBox(height: 12),

            // Correo
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                labelText: 'Correo',
                hintText: 'jhon.doe@example.com',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              keyboardType: TextInputType.emailAddress,
              validator: controller.validateEmail,
            ),
            const SizedBox(height: 12),

            // Contraseña con helper dinámico
            TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.obscurePassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () => ref
                      .read(signUpControllerProvider.notifier)
                      .togglePasswordVisibility(),
                ),
              ),
              obscureText: controller.obscurePassword,
              validator: controller.validatePassword,
              onChanged: (value) => ref
                  .read(signUpControllerProvider.notifier)
                  .updatePasswordHints(value),
            ),
            const SizedBox(height: 8),

            // Indicadores dinámicos
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: controller.passwordHints.map((hint) {
                return Row(
                  children: [
                    Icon(
                      hint['valid'] ? Icons.check_circle : Icons.cancel,
                      size: 16,
                      color: hint['valid'] ? Colors.green : Colors.red,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      hint['text'],
                      style: TextStyle(
                        fontSize: 12,
                        color: hint['valid'] ? Colors.green : Colors.red,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: formKey.currentState?.validate() == true
                  ? () => ref
                        .read(signUpControllerProvider.notifier)
                        .register(context)
                  : null,
              child: const Text('Registrarse'),
            ),
            if (controller.isLoggedIn)
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text('Registro exitoso, sesión iniciada'),
              ),
          ],
        ),
      ),
    );
  }
}
