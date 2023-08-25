import 'package:evaluacion1/screens/widgets/inputs.dart';
import 'package:flutter/material.dart';

class Calorias extends StatefulWidget {
  const Calorias({super.key});

  @override
  State<Calorias> createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {
  TextEditingController desayunoController = TextEditingController();
  TextEditingController almuerzoController = TextEditingController();
  TextEditingController cenaController = TextEditingController();
  TextEditingController generoController = TextEditingController();

  String resultado = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculo de calorias"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Conteo de Calorias",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            InputPersonal(value1controller: desayunoController, labelText: "Desayuno", hintText: "Calorias del desayuno",),
            const SizedBox(height: 10,),
            InputPersonal(value1controller: almuerzoController, labelText: "Almuerzo", hintText: "Calorias del almuerzo",),
            const SizedBox(height: 10,),
            InputPersonal(value1controller: cenaController, labelText: "Cena", hintText: "Calorias de la cena",),
            const SizedBox(height: 10,),
            InputPersonal(value1controller: generoController, labelText: "Sexo", hintText: "M/F",),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                double calorias = double.parse(desayunoController.text)+double.parse(almuerzoController.text)+
                double.parse(cenaController.text);
                if((generoController.text).toLowerCase() == 'f'){
                  resultado = calorias < 1600 ? "Estas en deficil calorico.": calorias >=1600 && calorias <= 2000 ? 
                  "Consumo normal.": calorias > 2000 ? "Consumo excesivo de calorias": "";  
                }else if((generoController.text).toLowerCase() == 'm'){
                  resultado = calorias < 2000 ? "Estas en deficil calorico.": calorias >=2000 && calorias <= 2500 ? 
                  "Consumo normal.": calorias > 2500 ? "Consumo excesivo de calorias": ""; 
                }
              });
            }, child: const Text("Calcular")),
            const SizedBox(height: 30,),
            Text(resultado, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)

          ],
        )
      )
    );
  }
}