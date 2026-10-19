import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {

  runApp(const MovieLibraryApp());

}

class MovieLibraryApp extends StatelessWidget {

  const MovieLibraryApp({super.key});

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Movie Library',

      theme: ThemeData(

        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(

          seedColor: Colors.deepPurple,

          brightness: Brightness.dark,

        ),

        scaffoldBackgroundColor: const Color(0xFF121212),

        cardColor: const Color(0xFF242424),

        appBarTheme: const AppBarTheme(

          backgroundColor: Color(0xFF1B1B1B),

          foregroundColor: Colors.white,

        ),

      ),

      home: const HomePage(),

    );

  }

}