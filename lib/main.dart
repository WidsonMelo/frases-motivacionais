import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Não deixe que as pessoas te façam desistir daquilo que você mais quer na vida.",
    "Acredite. Lute. Conquiste. E acima de tudo, seja feliz.",
    "Não importa o que você decidiu. O que importa é que isso te faça feliz.",
    "Algumas vezes coisas ruins acontecem em nossas vidas para nos colocar na direção das melhores coisas que poderíamos viver.",
    "Se a vida não ficar mais fácil, trate de ficar mais forte.",
    "Se a caminhada está difícil, é porque você está no caminho certo.",
    "Toda conquista começa com a decisão de tentar.",
    "Insista, persista e nunca desista.",
    "Vai. E se der medo, vai com medo mesmo.",
    "Quando algo ruim acontece você tem três escolhas: deixar isso definir você, deixar isso destruir você ou fazer isso te deixar mais forte.",
    "Você é mais forte do que imagina. Acredite.",
    "Imagine uma nova história para sua vida e acredite nela.",
    "Todo esforço tem a sua recompensa.",
    "Se não puder fazer tudo, faça tudo que puder.",
    "O importante não é vencer todos os dias, mas lutar sempre.",
    "Por maior que seja, não há obstáculo que não possa ser superado.",
    "Por maior que seja, não há obstáculo que não possa ser superado.",
    "Aquele que não luta para ter o futuro que quer deve aceitar o futuro que vier.",
    "Esqueça os piores momentos da sua vida e faça os melhores se tornarem inesquecíveis.",
    "Sem sacrifício não há vitória.",
  ];

  var _fraseGerada = "Sem sacrifício não há vitória.";

  void _gerarFrase(){
    var numeroGerado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroGerado];
    });
    print("Total de frases: " + _frases.length.toString());
    print(numeroGerado);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors. indigo,

      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/Imagem1.png"),
              Text(
                "$_fraseGerada",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 23,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.indigo,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      )
    );
  }
}
