import 'package:clubs_sports_app/clubs/screens/clubs_screen.dart';
import 'package:clubs_sports_app/states/providers/clubs_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Clubs Provider
        ChangeNotifierProvider(create: (_) => ClubProvider()),

        // Members Provider
        //ChangeNotifierProvider(create: (_) => MemberProvider()),

        // Other Providers
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ClubScreen(),
    );
  }
}
