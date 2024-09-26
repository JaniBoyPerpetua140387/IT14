import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healing_herbs/provider/favorite_provider.dart';
import 'package:healing_herbs/screens/Login/welcome_screen.dart';
// import 'package:healing_herbs/screens/Login/widgets/screens/login_screen.dart';

// import 'package:healing_herbs/screens/nav_bar_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.mulishTextTheme(),
          ),
          home: const WelcomeScreen(),
        ),
      );
}
