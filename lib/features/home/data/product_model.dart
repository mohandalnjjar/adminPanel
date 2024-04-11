class ProductModel {
  final String image, title, id, category, description;
  int qty;
  double price;

  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.id,
    required this.category,
    required this.description,
    this.qty = 1,
  });
}
