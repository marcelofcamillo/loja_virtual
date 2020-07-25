import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
// PageView: para alterar entre uma tela e outra de forma simples
    return PageView(
        controller: pageController,
        // impede que a PageView seja movimentada através de gestos
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(color: Colors.red),
          Container(color: Colors.yellow),
          Container(color: Colors.green)
        ]
    );
  }
}
