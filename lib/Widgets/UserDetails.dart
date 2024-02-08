import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aquí hauries de passar les dades de l'usuari mitjançant arguments o Provider
    // Això és només un exemple de com podria ser:
    final Map<String, dynamic> userData = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text('Detall de l\'usuari')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            userData['photo'] ?? 'URL per defecte de la foto',
            width: 100.0,
            height: 100.0,
          ),
          SizedBox(height: 20.0),
          Text('Nom: ${userData['name'] ?? 'Nom de l\'usuari'}'),
          Text('Correu: ${userData['email'] ?? 'Correu de l\'usuari'}'),
          // Altres camps d'usuari...
        ],
      ),
    );
  }
}
