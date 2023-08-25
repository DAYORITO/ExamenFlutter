import 'package:evaluacion1/screens/carlorias.dart';
import 'package:evaluacion1/screens/dietas.dart';
import 'package:evaluacion1/screens/imc.dart';
import 'package:evaluacion1/screens/presion_arterial.dart';
import 'package:evaluacion1/screens/rutinas.dart';
import 'package:evaluacion1/screens/sugerencias.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> opciones = <String>['Dietas', 'IMC', 'Calorías', 'Rutinas de ejercicio','Presión arterial',
    'Contacto'];
    final List<Widget> rutas = [
      const Dietas(),
      const IMC(),
      const Calorias(),
      const Rutinas(),
      const PresionArterial(),
      const Contacto()
    ];
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Vida saludable"),
      ),
      body: Center( child: Column( children: [
        const SizedBox(height: 5,),
        ClipRRect(
                  borderRadius: BorderRadius.circular(20), 
                  child: Image.asset(
                    'images/inicio.jpg',
                    width: 100, 
                    height: 100, 
                    fit: BoxFit.cover, 
                  ),
                ),
        const SizedBox(height: 5),       
        Expanded(
        child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: opciones.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(opciones[index]),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => rutas[index]));
            },  
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),  
  ))
  ]
  )
      )
    );
  }
}