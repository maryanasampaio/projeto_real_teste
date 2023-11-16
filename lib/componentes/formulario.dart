import 'package:flutter/material.dart';
import 'package:projeto_real_app/models/formularioModel.dart';

class Formulario extends StatelessWidget {
  const Formulario({super.key});

  @override
  Widget build(BuildContext context) {
    final nomeController = TextEditingController();
    final emailController = TextEditingController();

    final senhaController = TextEditingController();

    final confirmacaoDeSenhaController = TextEditingController();

    final FormularioModel campos = FormularioModel(
      nomeController.text,
      emailController.text,
      senhaController.text,
      confirmacaoDeSenhaController.text,
    );

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(22),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            controller: nomeController,
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
            controller: emailController,
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
            controller: senhaController,
            decoration: const InputDecoration(
              label: Text(
                'Senha',
              ),
            ),
            obscureText: true,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(22),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            controller: confirmacaoDeSenhaController,
            decoration: const InputDecoration(
              label: Text(
                'Confirmação de senha',
              ),
            ),
            obscureText: true,
            validator: (confirmacaoDeSenha) {
              if (confirmacaoDeSenha != senhaController) {
                return 'essa senha não compactua com a senha anterior!';
              } else {
                TextInputAction.next.name;
              }
              return confirmacaoDeSenha;
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          height: 45,
          width: 70,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              campos;
            },
            child: const Text(
              'Salvar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
