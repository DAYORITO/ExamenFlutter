import 'dart:math';

import 'package:evaluacion1/screens/widgets/inputs.dart';
import 'package:flutter/material.dart';


class IMC extends StatefulWidget {
  const IMC({super.key});

  @override
  State<IMC> createState() => _IMCState();
}

class _IMCState extends State<IMC> {
  TextEditingController control1 = TextEditingController();
  TextEditingController control2 = TextEditingController();
  double resultadofinal=0;
  String texto="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculo de IMC"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Calculo de IMC:", style: TextStyle(fontSize: 40),),
            const SizedBox(height: 30,),
            InputPersonal(value1controller: control1, labelText: "Peso", hintText: "Peso en Kg",),
            const SizedBox(height: 10,),
            InputPersonal(value1controller: control2, labelText: "Altura", hintText: "Altura en metros",),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                double resultado = double.parse(control1.text)/(pow(double.parse(control2.text),2));
                resultadofinal=double.parse(resultado.toStringAsFixed(2));
                texto = resultado < 18.5 ? "De acuerdo al calculo estas en Desnutrición.": resultado >= 18.5 && resultado <= 24.9 ? 
                "De acuerdo al calulo, estas en tu peso ideal.": resultado >=25 && resultado <= 29.9 ? 
                "De acuerdo al calculo, estas en un peso superior al normal.": resultado > 30 ? 
                "De acuerdo al calculo, estas en sobrepeso." : "";
              });
            }, 
            child: const Text("Calcular")),
            const SizedBox(height: 20,),
            Text("El resultado del calculo es: $resultadofinal"),
            const SizedBox(height: 10,),
            Text(texto)
          ],
        ),
      ),
    );
  }
}