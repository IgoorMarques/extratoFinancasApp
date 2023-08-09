import 'package:bytebank/components/entrada_dados.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<FormularioTransferencia> createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoDescricao =
  TextEditingController();

  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criando Transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EntradaDeDados(
              controlador: _controladorCampoDescricao,
              descricao: "Descrição do gasto",
              dica: "Salgado",
              tipoDeEntrada: TextInputType.text,
            ),
            EntradaDeDados(
              controlador: _controladorCampoValor,
              descricao: "Valor",
              dica: "5.5 R\$",
              icone: Icons.monetization_on,
              tipoDeEntrada: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final String descricao = _controladorCampoDescricao.text;
    final double? valor = double.tryParse(_controladorCampoValor.text);
    if (descricao.length > 2 && valor != null) {
      final transferenciaCriada = Transferencia(valor, descricao);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}