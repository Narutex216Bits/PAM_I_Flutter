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
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Olá, qual o seu nome?"),
            SizedBox(
              width: 250,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "Nome",
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Ok"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void cumprimenta(BuildContext context, TextEditingController controller) {
  final nome = controller.text;
  final mensagem = "Olá, $nome!";

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(mensagem),
    ),
  );
}
