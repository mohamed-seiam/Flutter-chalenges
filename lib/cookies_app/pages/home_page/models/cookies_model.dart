class Cookie {
  String name;
  String price;
  String image;
  Cookie({required this.name, required this.price, required this.image});
}

final cookies = [
  Cookie(name: "Chocolate chips", price: "20 USD", image: "assets/cookies_app_assets/1.png"),
  Cookie(name: "Oatmeal with raisins", price: "16 USD", image: "assets/cookies_app_assets/2.png"),
];
