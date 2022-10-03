import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Bienvenido"),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form1');
              }, 
              child: const Text("IMC")),
              const Text(""),
              ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, '/form2');
              },
               child: const Text("calcular sueldo empleado")),   
          ],
         ),
          
      ),
      
    );
  }
}