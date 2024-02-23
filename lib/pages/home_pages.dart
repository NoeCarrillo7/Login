import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contador"),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10), // Añadir más espacio
            const Text("NOE CARRILLO LIZARDI"),
            const SizedBox(height: 10), // Añadir un espacio entre los textos
            const Text("Numero de clicks"),
            Text("$cont"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => _sumar(),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => _restar(),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            child: const Icon(Icons.exposure_zero),
            onPressed: () => _restablecer(),
          ),
        ],
      ),
    );
  }

  void _sumar() {
    setState(() {
      cont++;
    });
  }

  void _restar() {
    if (cont > 0) {
      setState(() {
        cont--;
      });
    }
  }

  void _restablecer() {
    setState(() {
      cont = 0;
    });
  }
}
