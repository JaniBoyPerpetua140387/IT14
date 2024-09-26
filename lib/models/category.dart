class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "assets/images/all.png",
  ),
  Category(
    title: "Indoor",
    image: "assets/images/Herbal-7.jpg",
  ),
  Category(
    title: "Outdoor",
    image: "assets/images/Outdoor-1.jpg",
  ),
];
