import 'package:agle_app/models/user.dart';
import 'package:flutter/material.dart';

class UsersController extends ChangeNotifier {
  List<User> users;
  UsersController({
    required this.users,
  });
}
