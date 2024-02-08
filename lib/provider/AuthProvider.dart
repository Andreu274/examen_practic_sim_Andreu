import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool rememberCredentials = false;
  bool isLoggedIn = false;
}
