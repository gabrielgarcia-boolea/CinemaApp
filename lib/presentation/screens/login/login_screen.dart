import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'login-screen';

  static const validUser = 'username';
  static const validPass = '123456789';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textControllerUsername = TextEditingController();
    final textControllerPassword = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Nombre de usuario',
                          labelText: 'Nombre de usuario',
                        ),
                        controller: textControllerUsername,
                        validator: (value) {
                          if (value == null || value != validUser) {
                            return 'Usuario erróneo';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Contraseña',
                          labelText: 'Contraseña',
                        ),
                        controller: textControllerPassword,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value != validPass) {
                            return 'Contraseña errónea';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20.0),
                      Center(
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 2,
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.go('/home/0');
                            }
                          },
                          child: const Text('Acceder'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
