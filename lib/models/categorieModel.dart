class Category {
  String? title;
  String? image;

  Category({required this.title, this.image});
}

List<Category> categories = [
  Category(title: "VEGETABLES", image: 'assets/c_images/vegetable.jpg'),
  Category(title: "TUBERS", image: 'assets/c_images/tubers.jpg'),
  Category(title: "FLOURS", image: 'assets/c_images/flour.png'),
  Category(title: "FRUITS", image: 'assets/c_images/fruits.jpg'),
  Category(title: "DRIED SPICES", image: 'assets/c_images/spices.png'),
];
