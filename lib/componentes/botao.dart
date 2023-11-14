import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 45,
      width: 70,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Salvar',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
