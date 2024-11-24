import 'package:flutter/material.dart';

class MyApplicationsPage extends StatelessWidget {
  const MyApplicationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo
    final List<Map<String, String>> applications = [
      {"puesto": "Fontanero", "estado": "En Revisión", "fecha": "2023-11-10"},
      {"puesto": "Pintor", "estado": "Aceptado", "fecha": "2023-11-08"},
      {"puesto": "Electricista", "estado": "Rechazado", "fecha": "2023-11-07"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Postulaciones'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: applications.length,
        itemBuilder: (context, index) {
          final application = applications[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
                application["estado"] == "Aceptado"
                    ? Icons.check_circle
                    : application["estado"] == "Rechazado"
                    ? Icons.cancel
                    : Icons.hourglass_empty,
                color: application["estado"] == "Aceptado"
                    ? Colors.green
                    : application["estado"] == "Rechazado"
                    ? Colors.red
                    : Colors.orange,
              ),
              title: Text(application["puesto"]!),
              subtitle: Text("Estado: ${application["estado"]}\nFecha: ${application["fecha"]}"),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
