import 'package:flutter/material.dart';
import 'package:linkedin_app/providers/users.dart';
import 'package:linkedin_app/widgets/users_list_item.dart';
import 'package:provider/provider.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = Provider.of<Users>(context).users;

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (ctx, index) {
        return ChangeNotifierProvider.value(
          value: users[index],
          child: const UserListItem(),
        );
      },
    );
  }
}
