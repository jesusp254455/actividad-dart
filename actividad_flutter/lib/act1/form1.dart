import 'package:flutter/material.dart';


class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  TextEditingController cpeso = TextEditingController();
  TextEditingController caltura = TextEditingController();
  double peso = 0;
  double altura = 0;
  double total  = 0;
  String texto = "";
  void calcular(){
    setState(() {
       peso = double.parse(cpeso.text);
       altura = double.parse(caltura.text);
      total = double.parse((peso /(altura * altura)).toStringAsFixed((2)));
      if(total >= 18.5 && total <= 24.9){
          texto = "normal";
      }else if(total >= 25 && total <= 29.9){
          texto = "sobrepeso";
      }else if(total >= 30 && total <= 34.9){
          texto = "obecidad grado I";
      }else if(total >= 35 && total <= 39.9){
          texto = "obecidad grado II";
      }else if(total > 40){
          texto = "obecidad grado III";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("IMC"),
        ),
        body: Column(
          children: [
              titulo(),caja1(),caja2(),boton(),resultado()
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
            child:  TextField(
              controller: cpeso,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Peso")
              ),
            ),
          );
  }

  Widget caja2(){
    return Container(
            padding: const EdgeInsets.all(10),
            child:   TextField(
              controller: caltura,
              keyboardType: TextInputType.number,
              decoration : const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("altura")
              ),
            ),
          );
  }

    Widget boton(){
    return Container(
            padding: const EdgeInsets.all(10),
             child: ElevatedButton(
              onPressed: (){
                calcular();
              }, 
              child: const Text("Calcular")),
          );
  }
  Widget resultado(){
      return Text("su IMC: $total $texto",
      style: const TextStyle(color:  Colors.red, fontSize: 30.4),
      textAlign: TextAlign.center,);
  }
}