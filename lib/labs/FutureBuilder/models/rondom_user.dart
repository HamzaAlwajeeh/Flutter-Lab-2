class RondomUser {
  final String name;
  final String email;
  final String phone;
  final String picture;

  RondomUser({
    required this.name,
    required this.email,
    required this.phone,
    required this.picture,
  });

  factory RondomUser.fromJson(Map<String, dynamic> json) {
    return RondomUser(
      name:
          "${json['name']['title']} ${json['name']['first']} ${json['name']['last']}",
      email: json['email'],
      phone: json['phone'],
      picture: json['picture']['large'],
    );
  }
}
