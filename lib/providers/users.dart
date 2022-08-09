import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'user.dart';

class Users with ChangeNotifier {
  List<User> _users = [];

  Future<void> fetchUsers() async {
    final url = Uri.parse(
        'https://gt-members-app-default-rtdb.europe-west1.firebasedatabase.app/users.json');

    final response = await http.get(url);

    final usersData = json.decode(response.body) as Map<String, dynamic>;
    final List<User> loadedUsers = [];

    usersData.forEach((key, value) {
      loadedUsers.add(
        User(
          id: key,
          name: value['name'],
          bio: value['bio'],
          profilePictureUrl: value['profilePictureUrl'],
          profession: value['profession'],
          certificates: (value['certificates'] as List).map((e) {
            Map<String, String> temp = {
              'imageUrl': e['imageUrl'],
              'title': e['title']
            };

            return temp;
          }).toList(),
          experience: (value['experience'] as List).map((e) {
            Map<String, String> temp = {
              'imageUrl': e['imageUrl'],
              'title': e['title']
            };

            return temp;
          }).toList(),
          exams: (value['exams'] as List).map((e) {
            Map<String, String> temp = {
              'youtubeVideoAdress': e['youtubeVideoAdress'],
              'title': e['title']
            };

            return temp;
          }).toList(),
        ),
      );

      _users = loadedUsers;
      notifyListeners();
    });
  }

  List<User> get users {
    return _users;
  }

  User findById(userId) {
    return _users.firstWhere((user) => user.id == userId);
  }
}
