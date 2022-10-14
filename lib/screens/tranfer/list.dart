// ignore: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/card.dart';
import '../../model/transfer.dart';
import '../../services/theme_service.dart';
import 'form.dart';

class ListaTransferencias extends StatefulWidget {
  ListaTransferencias({Key? key}) : super(key: key);

  final List<Transferencia> _transferencias = [];

  @override
  State<ListaTransferencias> createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extrato Transferências'),
        leading: IconButton(
          onPressed: () {
            themeService.darkTheme = !themeService.darkTheme;
          },
          icon: Icon(themeService.darkTheme ? Icons.light : Icons.dark_mode_outlined),
        ),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, index) {
          final dataToCard = widget._transferencias[index];
          return CardTransferencia(transferCardData: dataToCard);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia?> future =
              // final Future future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((transferenciaRecebida) {
            setState(() {
              widget._transferencias.add(transferenciaRecebida!);
            });
          });
        },
      ),
    );
  }
}
