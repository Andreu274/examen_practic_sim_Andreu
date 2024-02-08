// UserManagement.dart
import 'package:flutter/material.dart';

class UserManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gestió d\'Usuaris')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addUser');
            },
            child: Text('Afegir Usuari'),
          ),
          ElevatedButton(
            onPressed: () {
              // Substitueix amb el codi per esborrar un usuari
            },
            child: Text('Esborrar Usuari'),
          ),
        ],
      ),
    );
  }
}
