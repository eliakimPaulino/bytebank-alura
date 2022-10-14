class Transferencia {
  final double valor;
  final int numeroConta;
  Transferencia({
    required this.valor,
    required this.numeroConta,
  });

  @override
  String toString() {
    return 'Número da Conta: $numeroConta\n Valor da Transf.: R\$ $valor\n';
  }
}
