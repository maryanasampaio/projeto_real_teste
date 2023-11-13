import 'package:flutter/material.dart';
import 'package:projeto_real_app/componentes/CamposWidget.dart';
import 'package:projeto_real_app/componentes/botao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 72, 112, 141),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(
          child: Text(
            'Página de cadastro',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
      body: Column(
        children: const [
          CamposDeRegistro(),
          Botao(),
        ],
      ),
    );
  }
}
