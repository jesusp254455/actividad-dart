import 'package:flutter/material.dart';
import 'act1/botones.dart';
import 'act1/form1.dart';
import 'act1/form2.dart';
import 'act1/dtp.dart';
void main(){
   runApp(const Elapp());
}


class Elapp extends StatelessWidget {
  const Elapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "fluter",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/botones',
        routes: {
          '/botones' :(context) => const Botones(),
          '/form1' :(context) => const Form1(),
          '/form2' :(context) => const Form2(),
          '/dtp'   :(context) => const Dtpersonales(),
        },
    );
  }
}