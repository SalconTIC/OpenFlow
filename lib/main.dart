import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'flutter_flow/flutter_flow_util.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // GoogleFonts.config.allowRuntimeFetching = true; // Permite descargar fuentes en ejecución

  // Inicializamos el tema (usando la clase que creamos en pasos anteriores)
  await FlutterFlowTheme.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: materialAppTitle,
      routerConfig: goRouter,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('es', '')],

      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF4B39EF), // El de tu theme
      ),

    );
  }
}
