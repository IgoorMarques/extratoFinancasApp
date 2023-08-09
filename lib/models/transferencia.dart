class Transferencia {
  final double valor;
  final String subtitle;

  Transferencia(this.valor, this.subtitle);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, subtitle: $subtitle}';
  }
}
