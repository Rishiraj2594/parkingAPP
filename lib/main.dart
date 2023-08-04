import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking_system/home.dart';
import 'package:parking_system/widgets/parking_slots.dart';

void main() async {
  runApp(const App());
}
var colorSchemeK =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 228, 248));
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: colorSchemeK,
        scaffoldBackgroundColor: colorSchemeK.background,
        cardTheme:  CardTheme(
            color: colorSchemeK.secondaryContainer,
          ),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
