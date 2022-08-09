
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user.dart';
import '../screens/user_profile_screen.dart';

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
