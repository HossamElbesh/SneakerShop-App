import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop =[
    Shoe(name: "Air Max",
        price: "240",
        description: "Great Shoe Discription",
        imagepath: "lib/assets/images/AIRMAXBOLT.png"),

    Shoe(name: "Dunk Retro",
        price: "300",
        description: "Great Shoe Discription",
        imagepath: "lib/assets/images/DUNKLOWRETRO.png"),

    Shoe(name: "NDunk Low",
        price: "250",
        description: "Great Shoe Discription",
        imagepath: "lib/assets/images/NDUNKLOWRETRO.png"),

    Shoe(name: "Max Portal",
        price: "345",
        description: "Great Shoe Discription",
        imagepath: "lib/assets/images/AIRMAXPORTAL.png"),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }

  List<Shoe> getUserCart(){
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