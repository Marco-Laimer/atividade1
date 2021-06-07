class Product {
  final String name;
  final String descriptiom;
  final String valor;
  final String valorParcela;
  final String photo;
  bool isFavorite;

  Product({
    required this.name,
    required this.descriptiom,
    required this.valor,
    required this.valorParcela,
    required this.photo,
    this.isFavorite = false,
  });
}
