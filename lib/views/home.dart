import 'package:flutter/material.dart';
import 'package:atmprojeto/views/cliente.dart';
import 'package:atmprojeto/views/contato.dart';
import 'package:atmprojeto/views/empresa.dart';
import 'package:atmprojeto/views/servico.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({Key? key}) : super(key: key);

  @override
  _HomeAtmState createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
  }

  void _abrirCliente() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));
  }

  void _abrirContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
  }

  void _abrirServico() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Atm Consultoria"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("imagens/logo.png"),
            const SizedBox(
              height: 16, // Altere a altura conforme desejado
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("imagens/menu_empresa.png"),
                ),
                const SizedBox(
                  width: 16, // Adicione a largura desejada
                ),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset("imagens/menu_servico.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 16, // Adicione a altura desejada entre as linhas
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("imagens/menu_contato.png"),
                ),
                const SizedBox(
                  width: 16, // Adicione a largura desejada
                ),
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset("imagens/menu_cliente.png"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
