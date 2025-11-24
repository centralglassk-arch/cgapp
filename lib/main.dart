import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:shared/shared.dart';  // Ajuste o caminho se necessário

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final router = AppRouter();
  runApp(App(router: router));
}

class App extends StatelessWidget {
  final AppRouter router;

  const App({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}
