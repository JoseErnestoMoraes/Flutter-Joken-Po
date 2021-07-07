import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  Widget Botao(String nome) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          print("Clicou! $nome");
        });
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Text(nome),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //text
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do APP",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          //imagem
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  print("Clicou!");
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text("Maquina"),
              ),
            ),
          ),

          //tex
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do APP",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          //linha 3 imagens
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Botao("Pedra"), Botao("Papel"), Botao("Tesoura")],
          )
        ],
      ),
    );
  }
}
