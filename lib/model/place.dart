class Place {
  final String id;
  final String name;
  final String category;
  final String image;
  final String shortDesc;
  final String fullDesc;
  final String location;
  final double rating;
  final String openHours;

  Place({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.shortDesc,
    required this.fullDesc,
    required this.location,
    required this.rating,
    required this.openHours,
  });

  // Dibuat agar struktur data siap untuk pengembangan lanjutan,
  // misalnya saat data diambil dari API (JSON response) pada tahap berikutnya.
  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      shortDesc: json['shortDesc'] as String,
      fullDesc: json['fullDesc'] as String,
      location: json['location'] as String,
      rating: (json['rating'] as num).toDouble(),
      openHours: json['openHours'] as String,
    );
  }
}
