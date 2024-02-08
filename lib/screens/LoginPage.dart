import 'package:examen_practic_sim/provider/authprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Consumer<AuthProvider>(
        builder: (context, authProvider, _) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Usuari'),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Contrasenya'),
            ),
            Checkbox(
              value: authProvider.rememberCredentials,
              onChanged: (value) {
                authProvider.rememberCredentials = value!;
              },
            ),
            ElevatedButton(
              onPressed: () {
                authProvider.isLoggedIn = true;
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Iniciar Sessió'),
            ),
          ],
        ),
      ),
    );
  }
}
