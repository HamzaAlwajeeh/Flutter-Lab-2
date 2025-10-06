class RondomUser {
  final String name;
  final String gender;
  final String email;
  final String phone;
  final String picture;

  RondomUser({
    required this.name,
    required this.gender,
    required this.email,
    required this.phone,
    required this.picture,
  });

  factory RondomUser.fromJson(Map<String, dynamic> json) {
    return RondomUser(
      name:
          "${json['name']['title']} ${json['name']['first']} ${json['name']['last']}",
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      picture: json['picture']['large'],
    );
  }

  @override
  String toString() {
    return 'RondomUser(name: $name, email: $email, phone: $phone, picture: $picture)';
  }
}
