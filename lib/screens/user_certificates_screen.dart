import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/users.dart';
import '../widgets/experience_element.dart';

class CertificatesScreen extends StatelessWidget {
  final String userId;
  const CertificatesScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context).findById(userId);
    List<Map<String, String>> userCertificates =
        user.certificates as List<Map<String, String>>;
    return ListView.builder(
        itemCount: userCertificates.length,
        itemBuilder: (ctx, index) {
          return ExperienceElement(
              title: userCertificates[index]['title']!,
              imageUrl: userCertificates[index]['imageUrl']!);
        });
  }
}
