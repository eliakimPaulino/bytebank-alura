import 'package:flutter/material.dart';
import '../model/transfer.dart';

class CardTransferencia extends StatelessWidget {
  final Transferencia transferCardData;

  const CardTransferencia({Key? key, required this.transferCardData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.attach_money_rounded),
        title: Text('R\$ ${transferCardData.valor.toString()}',
            style: const TextStyle(fontSize: 16)),
        subtitle: Text('Acc ${transferCardData.numeroConta.toString()}',
            style: const TextStyle(fontSize: 12)),
      ),
    );
  }
}
