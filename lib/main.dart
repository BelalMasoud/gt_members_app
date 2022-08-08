import 'package:flutter/material.dart';
import 'package:linkedin_app/providers/users.dart';
import 'package:linkedin_app/screens/user_profile_Screen.dart';
import 'package:linkedin_app/screens/users_screen.dart';
import 'package:provider/provider.dart';

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
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const UsersScreen(),
        routes: {
          UserProfileScreen.routeName: (ctx) => UserProfileScreen(),
        },
      ),
    );
  }
}
