import 'package:flutter/material.dart';
import 'package:linkedin_app/screens/user_certificates_screen.dart';
import 'package:linkedin_app/screens/user_exams_screen.dart';
import 'package:linkedin_app/screens/user_experience_screen.dart';
import 'package:linkedin_app/screens/user_info_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);
  static const routeName = '/user-profile-screen';

  @override
  Widget build(BuildContext context) {
    final String userId = ModalRoute.of(context)!.settings.arguments as String;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(
              icon: Icon(Icons.account_circle_outlined, size: 15),
              text: 'information',
              height: 50,
            ),
            Tab(
              icon: Icon(Icons.beenhere_outlined, size: 15),
              height: 50,
              text: 'Certificates',
            ),
            Tab(
              icon: Icon(Icons.star_border, size: 15),
              text: 'Experience',
              height: 50,
            ),
            Tab(
              icon: Icon(Icons.verified_outlined, size: 15),
              text: 'verified Exams',
              height: 50,
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            UserInfoScreen(userId: userId),
            CertificatesScreen(userId: userId),
            ExperienceScreen(userId: userId),
            ExamsScreen(userId: userId),
          ],
        ),
      ),
    );
  }
}

/*



 
          */