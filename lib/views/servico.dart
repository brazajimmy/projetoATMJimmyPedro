import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  const Servico({Key? key}) : super(key: key);

  @override
  _ServicoState createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Servico"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("imagens/detalhe_servico.png"),
                  const Text(
                    "Sobre a servico",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  )
                ],
              ),
              const Text("Sobre a servico")
            ],
          ),
        ));
  }
}
