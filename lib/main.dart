import 'package:examen_practic_sim/Widgets/UserDetails.dart';
import 'package:examen_practic_sim/Widgets/UserManagement.dart';
import 'package:examen_practic_sim/provider/authprovider.dart';
import 'package:examen_practic_sim/screens/HomeScreen.dart';
import 'package:examen_practic_sim/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/home': (context) => HomeScreen(),
          '/userDetails': (context) => UserDetails(),
          '/userManagement': (context) => UserManagement(),
        },
      ),
    );
  }
}
