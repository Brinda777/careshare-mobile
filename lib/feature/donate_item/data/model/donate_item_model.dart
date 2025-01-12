class DonateItemModel {
  final int id;
  final String title;
  final String image;
  final String description;
  final int quantity;
  final String unit;
  final double price;

  DonateItemModel({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.quantity,
    required this.unit,
    required this.price,
  });

  DonateItemModel copyWith({
    String? title,
    String? image,
    double? price,
    int? quantity,
  }) {
    return DonateItemModel(
      id: id,
      title: title ?? this.title,
      image: image ?? this.image,
      description: description,
      quantity: quantity ?? this.quantity,
      unit: unit,
      price: price ?? this.price,
    );
  }
}
