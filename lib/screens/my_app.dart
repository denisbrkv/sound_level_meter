import 'package:flutter/material.dart';
import 'package:sound_level_meter/screens/bottom_nav_bar.dart';
import 'package:sound_level_meter/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Sound level meter'),
            ),
            body: HomeScreen(),
            bottomNavigationBar: BottomNavBar(),
          ),
        ));
  }
}
