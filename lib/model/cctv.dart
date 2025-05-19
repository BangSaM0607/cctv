class CCTV {
  final int id;
  final String name;
  final String location;
  final String imageUrl;

  CCTV({
    required this.id,
    required this.name,
    required this.location,
    required this.imageUrl,
  });
  // Konstruktor untuk CCTV

  factory CCTV.fromMap(Map<String, dynamic> map) {
    return CCTV(
      id: map['id'], // Ambil nilai dari map
      name: map['name'],
      location: map['location'],
      imageUrl: map['image_url'],
    );
  }
}
