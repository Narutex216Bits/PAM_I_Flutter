import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textField("Num 1", num1Controller),
            textField("Num 2", num2Controller),
            ElevatedButton(
              onPressed: () => soma(
                context,
                num1Controller.text,
                num2Controller.text,
              ),
              child: const Text("Soma +"),
            ),
            ElevatedButton(
              onPressed: () => sub(
                context,
                num1Controller.text,
                num2Controller.text,
              ),
              child: const Text("Subtração -"),
            ),
            ElevatedButton(
              onPressed: () => mult(
                context,
                num1Controller.text,
                num2Controller.text,
              ),
              child: const Text("Multiplicação x"),
            ),
            ElevatedButton(
              onPressed: () => div(
                context,
                num1Controller.text,
                num2Controller.text,
              ),
              child: const Text("Divisão ÷"),
            ),
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, String valor1, valor2) {
    //Função para soma
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final soma = num1 + num2;

    final resposta = "$num1 + $num2 = $soma";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void sub(BuildContext context, String valor1, valor2) {
    //Função para soma
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final soma = num1 - num2;

    final resposta = "$num1 - $num2 = $soma";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void mult(BuildContext context, String valor1, valor2) {
    //Função para soma
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final soma = num1 * num2;

    final resposta = "$num1 x $num2 = $soma";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void div(BuildContext context, String valor1, valor2) {
    //Função para soma
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final soma = num1 / num2;

    final resposta = "$num1 ÷ $num2 = $soma";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  Widget textField(String label, TextEditingController controller) {
    //Função para os campos numéricos
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}
