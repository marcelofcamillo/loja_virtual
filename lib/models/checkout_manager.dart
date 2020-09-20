import 'package:flutter/cupertino.dart';
import 'package:loja_virtual/models/cart_manager.dart';

class CheckoutManager extends ChangeNotifier {
  CartManager cartManager;

  // ignore: use_setters_to_change_properties
  void updateCart(CartManager cartManager){
    this.cartManager = cartManager;
  }
}