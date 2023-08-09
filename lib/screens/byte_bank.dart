import 'package:bytebank/screens/lista_transferencia.dart';
import 'package:flutter/material.dart';

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        hoverColor: Colors.blueAccent[700],
      ),
      home: ListaTransferencia(),
    );
  }
}
