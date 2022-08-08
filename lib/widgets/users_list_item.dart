import 'package:flutter/material.dart';
import 'package:linkedin_app/providers/user.dart';
import 'package:linkedin_app/screens/user_profile_screen.dart';
import 'package:provider/provider.dart';

class UserListItem extends StatelessWidget {
  const UserListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          user.profilePictureUrl,
        ),
      ),
      title: Text(user.name),
      subtitle: Text(user.profession),
      onTap: () {
        Navigator.of(context)
            .pushNamed(UserProfileScreen.routeName, arguments: user.id);
      },
    );
  }
}
