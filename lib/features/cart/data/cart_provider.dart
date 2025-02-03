import 'package:ecom_provider/features/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<ProductModel> _cart = [];
  List<ProductModel> get cart => _cart;

  void toggleFavorite(ProductModel product) {
    if (_cart.contains(product)) {
      for (ProductModel element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(
      context,
      listen: listen,
     );
  }
}
