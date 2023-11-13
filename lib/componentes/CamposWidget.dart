import 'package:flutter/material.dart';

class CamposDeRegistro extends StatelessWidget {
  const CamposDeRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Nome do usuário',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(22),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Email',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Senha',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(22),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text(
                'Confirmação de senha',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
