import 'package:flutter/material.dart';


class Form2 extends StatefulWidget {
  const Form2({super.key});

  @override
  State<Form2> createState() => _Form1State();
}

class _Form1State extends State<Form2> {
  TextEditingController cnombre = TextEditingController();
  TextEditingController chora = TextEditingController();
  TextEditingController cvalor = TextEditingController();
  int valor = 0;
void datos (){
     setState(() {
      valor = int.parse(cvalor.text);
      Navigator.pushNamed(context, '/dtp', arguments: {"nombre" : cnombre.text,"valor" : valor});
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calcular sueldo empleado"),
        ),
        body: ListView(
          children: [
              titulo(),caja1(),caja2(),caja3(),boton(),boton1()
          ],
        ),
    );
  }
 Widget titulo(){
    return const Text("IMCAPP",
    style:  TextStyle(color: Colors.red, fontSize: 20),
    textAlign: TextAlign.center,
    );
  }
   
 Widget caja1(){
    return Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: cnombre,
              decoration: const  InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Nombre de empleado")
              ),
            ),
          );
  }

  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              controller: chora,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Horas de trabajo")
              ),
            ),
          );
  }
  Widget caja3(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              controller: cvalor,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("valor de la hora")
              ),
            ),
          );
  }

    Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
             
              }, 
              child: const Text("Calcular")),
          );
  }
  Widget boton1(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                datos();
              }, 
              child: const Text("ir a otra ruta")),
          );
  }
}