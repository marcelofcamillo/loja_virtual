import 'package:flutter/material.dart';
import 'package:loja_virtual/common/custom_drawer/custom_icon_button.dart';
import 'package:loja_virtual/models/item_size.dart';

class EditItemSize extends StatelessWidget {
  const EditItemSize({Key key, this.size, this.onRemove, this.onMoveUp, this.onMoveDown}) : super(key: key);

  final ItemSize size;
  final VoidCallback onRemove;
  final VoidCallback onMoveUp;
  final VoidCallback onMoveDown;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 30,
          child: TextFormField(
            initialValue: size.name,
            decoration: const InputDecoration(
              labelText: 'Título',
              isDense: true
            ),
            validator: (name) {
              if(name.isEmpty) {
                return 'Inválido';
              } else {
                return null;
              }
            },
            onChanged: (name) => size.name = name
          )
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 30,
          child: TextFormField(
            initialValue: size.stock?.toString(),
            decoration: const InputDecoration(
              labelText: 'Estoque',
              isDense: true
              ),
            keyboardType: TextInputType.number,
            validator: (stock) {
              if(int.tryParse(stock) == null) {
                return 'Inválido';
              } else {
                return null;
              }
            },
            onChanged: (stock) => size.stock = int.tryParse(stock)
          )
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 40,
          child: TextFormField(
            initialValue: size.price?.toStringAsFixed(2),
            decoration: const InputDecoration(
              labelText: 'Preço',
              isDense: true,
              prefixText: 'R\$ '
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            validator: (price) {
              if(num.tryParse(price) == null) {
                return 'Inválido';
              } else {
                return null;
              }
            },
            onChanged: (price) => size.price = num.tryParse(price)
          )
        ),
        const SizedBox(width: 8),
        CustomIconButton(
          iconData: Icons.remove,
          color: Colors.red,
          onTap: onRemove
        ),
        const SizedBox(width: 8),
        CustomIconButton(
          iconData: Icons.arrow_drop_up,
          color: Colors.black,
          onTap: onMoveUp
        ),
        CustomIconButton(
          iconData: Icons.arrow_drop_down,
          color: Colors.black,
          onTap: onMoveDown,
        )
      ]
    );
  }
}