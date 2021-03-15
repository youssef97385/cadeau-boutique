import 'package:flutter/material.dart';

import 'app/App.dart';
import 'injectoin.dart';

void main() async {
  await iniGetIt();
  runApp(App());
}
