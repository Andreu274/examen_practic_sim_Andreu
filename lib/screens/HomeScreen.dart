import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:examen_practic_sim/provider/AuthProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Consumer<AuthProvider>(
        builder: (context, authProvider, _) => FutureBuilder(
          future: FirebaseFirestore.instance.collection('users').get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final users = snapshot.data?.docs ?? [];
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final userData = users[index].data() as Map<String, dynamic>;
                  return ListTile(
                    title: Text(userData['name'] ?? 'Nom de l\'usuari'),
                    subtitle: Text(userData['email'] ?? 'Correu de l\'usuari'),
                    onTap: () {
                      Navigator.pushNamed(context, '/userDetails');
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
