import 'package:flutter/material.dart';

class Dietas extends StatelessWidget {
  const Dietas({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> registros=["Desayuno","Almuerzo","Cena"];
    List<String> descripcion= [
      "-Avena cocida con frutas frescas (como plátano o bayas)\n-Yogur bajo en grasa o alternativa vegana\n-Un puñado de nueces o almendras\n-Té verde o una porción pequeña de jugo natural",
      "Ensalada mixta con hojas verdes (lechuga, espinacas) y vegetales (tomate, pepino, zanahoria, pimiento)\n-Proteína magra (pollo a la parrilla\n-Pavo o tofu\n-Granos integrales (quinua o arroz integral)\nAderezo casero (aceite de oliva, limón, hierbas).",
      "Salmón al horno con hierbas\n-Brócoli al vapor o asado\n-Batata o camote al horno\n-Ensalada pequeña con aguacate y espinacas\n-Porción pequeña de frutas frescas como postre."];
    List<String> imagenes=["images/desayuno.jpg", "images/almuerzo.jpg", "images/cena.jpg"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plan de dietas"),
      ),
      body: ListView.separated(
        itemCount: registros.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                title: Text(
                    registros[index]),
                subtitle: Text(
                    descripcion[index]),
                leading: Image.asset(imagenes[index], height: 100,),
              ),
            ),
          );
        },
      ),
    );
  }
}