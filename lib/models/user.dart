class User {
  final String name, description, email, phoneNumber, avatarUrl, group;
  const User(
      {required this.name,
      required this.description,
      required this.email,
      required this.phoneNumber,
      required this.group,
      required this.avatarUrl});

  User copyWith(
          {String? name,
          String? description,
          String? email,
          String? phoneNumber,
          String? group,
          String? avatarUrl}) =>
      User(
          name: name ?? this.name,
          description: description ?? this.description,
          email: email ?? this.email,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          group: group ?? this.group,
          avatarUrl: avatarUrl ?? this.avatarUrl);
}
