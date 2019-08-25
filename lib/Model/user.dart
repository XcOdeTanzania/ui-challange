import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String email;
  final String avatar;

  User({@required this.name, @required this.email, @required this.avatar});
}

List<User> userList = <User>[
  User(
      name: 'Kalimwenjuma D Robin',
      email: 'kalrobbynson@gmail.com',
      avatar: 'assets/profile/robbyn.jpg'),
  User(
      name: 'Asha Hamis',
      email: 'asha@gmail.com',
      avatar: 'assets/profile/asha.jpg'),
  User(
      name: 'Saida Bafsir',
      email: 'saida@gmail.com',
      avatar: 'assets/profile/saida.jpeg'),
];
