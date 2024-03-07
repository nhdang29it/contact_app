class User {
  final String name, description, email, phoneNumber, avatarUrl;
  const User(
      {required this.name,
      required this.description,
      required this.email,
      required this.phoneNumber,
      required this.avatarUrl});

  User copyWith(
          {String? name,
          String? description,
          String? email,
          String? phoneNumber,
          String? avatarUrl}) =>
      User(
          name: name ?? this.name,
          description: description ?? this.description,
          email: email ?? this.email,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          avatarUrl: avatarUrl ?? this.avatarUrl);
}
