class SearchHistory {
  final int id;
  final String email;
  final String name;

  SearchHistory({required this.id, required this.name, required this.email});

  factory SearchHistory.fromMap(Map<String, dynamic> json) => SearchHistory(
        id: json['id'],
        email: json['email'],
        name: json['name'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }
}
