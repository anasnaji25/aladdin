class HomePorductmodel {
  String name;
  String subtitle;
  String image;
  String price;
  String rating;

  HomePorductmodel(
      {required this.name,
      this.subtitle = "",
      required this.image,
      required this.price,
      required this.rating});
}
