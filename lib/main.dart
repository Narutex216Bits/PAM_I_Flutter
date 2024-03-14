import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Atividade"),
            Column(
              children: [
                Text("Nome: Marcio Henrique de Tulio"),
                Text("Email: marcio.tulio@etec.sp.gov.br"),
                Text("Idade: 35 anos"),
              ],
            ),
            Center(child: Text("13/03/2024")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("2H3"),
                Text("Matão"),
              ],
            )
          ],
        ));
  }
}
