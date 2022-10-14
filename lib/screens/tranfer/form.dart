import 'package:flutter/material.dart';
import '../../components/editor.dart';
import '../../model/transfer.dart';

class FormularioTransferencia extends StatelessWidget {
  FormularioTransferencia({Key? key}) : super(key: key);
  final TextEditingController _controllerNumConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transferir')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controlador: _controllerNumConta,
                labelText: 'Número da Conta',
                hintText: '0000'),
            Editor(
                controlador: _controllerValor,
                labelText: 'Valor',
                hintText: 'R\$',
                icon: Icons.monetization_on),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.secondary,
                ),
                child: const Text('Confirmar'),
                onPressed: () {
                  _criaTransferencia(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final controllerNumeroConta = int.tryParse(_controllerNumConta.text);
    final controllerValor = double.tryParse(_controllerValor.text);
    if (controllerNumeroConta != null && controllerValor != null) {
      final transferenciaCriada = Transferencia(numeroConta: controllerNumeroConta, valor: controllerValor);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
