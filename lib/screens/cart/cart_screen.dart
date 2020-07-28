import 'package:flutter/material.dart';
import 'package:loja_virtual/common/custom_drawer/price_card.dart';
import 'package:loja_virtual/models/cart_manager.dart';
import 'package:provider/provider.dart';

import 'components/cart_tile.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
        centerTitle: true
      ),
      body: Consumer<CartManager>(
        builder: (_, cartManager, __) {
          print(cartManager.isCartValid);
          return ListView(
            children: <Widget>[
              Column(
                children: cartManager.items.map(
                        (cartProduct) => CartTile(cartProduct)).toList(),
              ),
              PriceCard(
                buttonText: 'Continuar para entrega',
                onPressed: cartManager.isCartValid ? () {

                } : null,
              ),
            ]
          );
        }
      )
    );
  }
}