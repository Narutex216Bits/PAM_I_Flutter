import 'package:flutter/material.dart';

//O metodo main é onde toda a aplicação baseada em Dart Começa
void main() => runApp(const Aplicacao());

//Classe aplicação responsável por gerenciar todo o nosso app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
//MaterialApp é responsável por gerenciar e estabelecer padrões para todas as telas do app.
//Nele temos: configuração de telas estilos a serem aplicados na tela (via tema)
//toda estruturação de tela baseada no Materiaçl (material.io)
    return MaterialApp(
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      home: const HomePage(),
    );
  }
}

//A Classe que representa a tela do aplicativo com todo o seu Layout
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Resumo do Pedido",
              style: textTheme.headlineLarge,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text("1x"),
                ),
                const Expanded(
                  child: Text("Bananas do Ninja Banana"),
                ),
                const Text("2,80"),
              ],
            ),
             Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text("2x"),
                ),
                const Expanded(
                  child: Text("Morango Malando"),
                ),
                const Text("8,90"),
              ],
             ),
          ],
        ),
      ),
    );
  }
}
