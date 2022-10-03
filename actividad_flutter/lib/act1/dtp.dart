import 'package:flutter/material.dart';


class Dtpersonales extends StatefulWidget {
  const Dtpersonales({super.key});

  @override
  State<Dtpersonales> createState() => _DtpersonalesState();
}

class _DtpersonalesState extends State<Dtpersonales> {
  @override
  Widget build(BuildContext context) {
      Map argumentos = ModalRoute.of(context)?.settings.arguments as Map ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("datos personales"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Text ("su nombre es ${argumentos['nombre']['valor']}"),
      ),
    );
  }
}