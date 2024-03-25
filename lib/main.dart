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
      body: Center(
      
      TextField("num1", num1Controller),
      const Text("+"),
      TextField("num2", num2Controller),
      SizedBox(
        width: 350,
        child: ElevatedButton(
          onPRessed: () => soma(
            context,
            num1Controller.text,
            num2Controller.text,
          ),
          child: const Text("Somar!"),
          ),
        ),
      ),
    );
  }
}

void soma(BuildContext context, String value1, value2) {
  int num1 = int.parse(value1);
  int num2 = int.parse(value2);

  final message = "$num1 + $num2 = ${num1 + num2}";

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
