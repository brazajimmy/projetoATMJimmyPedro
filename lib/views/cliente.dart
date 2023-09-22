import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  const Cliente({Key? key}) : super(key: key);

  @override
  _ClienteState createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cliente"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("imagens/detalhe_cliente.png"),
                  const Text(
                    "Sobre o cliente",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  )
                ],
              ),
              const Text("Sobre a Cliente")
            ],
          ),
        ));
  }
}
