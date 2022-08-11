import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/users.dart';
import 'screens/user_profile_screen.dart';
import 'screens/users_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((ctx) => Users())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GT Certificate',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: AnimatedSplashScreen(
            nextScreen: const UsersScreen(),
            splash: Image.asset("assets/logo.png"),
            duration: 2500,
            backgroundColor: Color.fromRGBO(20, 255, 231, 0.498)),
        routes: {
          UserProfileScreen.routeName: (ctx) => const UserProfileScreen(),
        },
      ),
    );
  }
}
