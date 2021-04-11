import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/App.dart';
import 'injectoin.dart';

void main() async {
  await iniGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}
