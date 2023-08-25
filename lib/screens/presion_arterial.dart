import 'package:evaluacion1/screens/widgets/inputs.dart';
import 'package:flutter/material.dart';

class PresionArterial extends StatefulWidget {
  const PresionArterial({super.key});

  @override
  State<PresionArterial> createState() => _PresionArterialState();
}

class _PresionArterialState extends State<PresionArterial> {
  TextEditingController presionController = TextEditingController();
    String respuesta ="";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculo de presion arterial"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Consulta de presión arterial", style: TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            InputPersonal(value1controller: presionController, labelText: "Presion", hintText: "Ingresa tu presion arterial",),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed:(){
              setState(() {
                double presion = double.parse(presionController.text);
                respuesta = presion < 120 ? "Su presion arterial es normal.": presion >= 120 && presion <= 129 ?
                "Presión arterial alta (Sin factores de riesgo cardiaco).": presion > 130 && presion <= 179 ? 
                "Presión arterial alta (con otros factores de riesgo cardíaco, según algunos proveedores).":
                presion >= 180 ? "Presión arterial peligrosamente alta - Busque atención médica de inmediato." :"";
              });
            } , child: const Text("Consultar")),
            const SizedBox(height: 10,),
            
              Text("Aqui el resultado de tu consulta: $respuesta")
          
            
          ],
        )
      )

    );
  }
}