class ContactModel {
  final int? id;
  final String name;
  final String email;
  final String phone;

  ContactModel(
    this.id, {
    required this.name,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email, 'phone': phone};
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
    );
  }
}
