import 'dart:typed_data';

class User {
  String name;
  int id;
  Uint8List image;
  User({
    required this.name,
    required this.id,
    required this.image,
  });
}
