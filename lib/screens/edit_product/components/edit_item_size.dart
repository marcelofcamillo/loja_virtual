import 'package:flutter/material.dart';
import 'package:loja_virtual/common/custom_drawer/custom_icon_button.dart';
import 'package:loja_virtual/models/item_size.dart';

class EditItemSize extends StatelessWidget {
  const EditItemSize({this.size, this.onRemove});

  final ItemSize size;
  final VoidCallback onRemove;

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
            )
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
            keyboardType: TextInputType.number
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
              keyboardType: const TextInputType.numberWithOptions(decimal: true)
          )
        ),
        const SizedBox(width: 8),
        CustomIconButton(
          iconData: Icons.remove,
          color: Colors.red,
          onTap: onRemove,
        ),
        const SizedBox(width: 8),
        CustomIconButton(
          iconData: Icons.arrow_drop_up,
          color: Colors.black,
        ),
        CustomIconButton(
          iconData: Icons.arrow_drop_down,
          color: Colors.black,
        )
      ]
    );
  }
}
