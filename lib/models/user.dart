class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Asri Nurjati Rahayu",
      username: "Asri",
      email: "2006028@itg.ac.id",
      profilePhoto:
          "https://i.postimg.cc/8C6gZ4DY/Whats-App-Image-2023-03-27-at-09-11-54.jpg",
      phoneNumber: "082316659833",
    );
  }
}