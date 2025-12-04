class Course {
  final String category;
  final String imageUrl;
  final String title;
  final String instructor;
  final String instructorImageUrl;
  final double rating;
  final String studentCount;
  final String duration;
  final double price;
  final double? discountedPrice;
  bool isFavorite;

  Course({
    required this.category,
    required this.imageUrl,
    required this.title,
    required this.instructor,
    required this.instructorImageUrl,
    required this.rating,
    required this.studentCount,
    required this.duration,
    required this.price,
    this.discountedPrice,
    this.isFavorite = false,
  });
}
