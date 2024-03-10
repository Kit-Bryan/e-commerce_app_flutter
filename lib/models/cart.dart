import 'package:e_commerce_app_flutter/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
// list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Adidas",
      price: "286",
      imagePath: "lib/images/adidas.jpeg",
      description: "The forward-thinking design of his latest signature shoe.",
    ),
    Shoe(
      name: "Air Jordans",
      price: "600",
      imagePath: "lib/images/jordan.jpeg",
      description:
          "Engineered for peak performance, ensuring optimal comfort and style during every stride.",
    ),
    Shoe(
      name: "Kyrie",
      price: "420",
      imagePath: "lib/images/kyries.jpeg",
      description:
          "A commitment to pushing boundaries in both design and functionality.",
    ),
    Shoe(
      name: "Nike",
      price: "250",
      imagePath: "lib/images/nike.jpeg",
      description: "Step into the future of footwear with the Adidas shoe.",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
