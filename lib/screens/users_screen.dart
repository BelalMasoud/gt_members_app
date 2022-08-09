
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/users.dart';
import '../widgets/users_list.dart';

class UsersScreen extends StatefulWidget {
  static const routeName = '/users-screen';
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  bool x = true;
  bool isLoading = true;
  @override
  void didChangeDependencies() {
    if (x) {
      setState(() {
        isLoading = true;
      });
      Provider.of<Users>(context).fetchUsers().then((_) {
        setState(() {
          isLoading = false;
        });
      });
    }
    x = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: const Text(
          'Users',
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: isLoading ? const CircularProgressIndicator() : const UsersList(),
    );
  }
}
