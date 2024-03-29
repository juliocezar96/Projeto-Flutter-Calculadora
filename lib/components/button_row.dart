import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //inserindo separação de colunas dos botões
        children: buttons.fold(<Widget>[], (list, btn) {
          list.isEmpty ? list.add(btn) : list.addAll([SizedBox(width: 1), btn]);
          return list;
        }),
      ),
    );
  }
}
