import 'package:flutter/material.dart';
import 'package:linkedin_app/providers/users.dart';
import 'package:linkedin_app/widgets/experience_element.dart';
import 'package:provider/provider.dart';

class ExperienceScreen extends StatelessWidget {
  final String userId;
  const ExperienceScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context).findById(userId);
    List<Map<String, String>> userExperience =
        user.experience as List<Map<String, String>>;
    return ListView.builder(
        itemCount: userExperience.length,
        itemBuilder: (ctx, index) {
          return ExperienceElement(
              title: userExperience[index]['title']!,
              imageUrl: userExperience[index]['imageUrl']!);
        });
  }
}
