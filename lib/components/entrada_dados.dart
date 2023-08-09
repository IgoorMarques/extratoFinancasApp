import 'package:flutter/material.dart';

class EntradaDeDados extends StatelessWidget {
  final TextEditingController controlador;
  final String dica;
  final String descricao;
  final TextInputType tipoDeEntrada;
  final IconData? icone;

  EntradaDeDados({
    required this.controlador,
    required this.descricao,
    required this.dica,
    required this.tipoDeEntrada,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: const TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: descricao,
          hintText: dica,
        ),
        keyboardType: tipoDeEntrada,
      ),
    );
  }
}
