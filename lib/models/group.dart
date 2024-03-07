import 'package:contact_app/models/user.dart';

class Group {
  final String groupName;
  final List<User> member;
  const Group({required this.groupName, required this.member});

  Group copyWith({String? groupName, List<User>? member}) => Group(
      groupName: groupName ?? this.groupName, member: member ?? this.member);
}
