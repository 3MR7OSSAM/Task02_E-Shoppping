class CartItem {
  final String name;
  final String variant;
  final String price;
  final String imageUrl;
  int quantity;

  CartItem({
    required this.name,
    required this.variant,
    required this.price,
    required this.imageUrl,
    this.quantity = 1,
  });
}