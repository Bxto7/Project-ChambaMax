import 'package:flutter/material.dart';

class PublicationsPage extends StatefulWidget {
  const PublicationsPage({Key? key}) : super(key: key);

  @override
  _PublicationsPageState createState() => _PublicationsPageState();
}

class _PublicationsPageState extends State<PublicationsPage> {
  final List<Map<String, String>> publications = [
    {"puesto": "Fontanero", "estado": "Activa", "fecha": "2023-11-01"},
    {"puesto": "Pintor", "estado": "En Progreso", "fecha": "2023-11-05"},
    {"puesto": "Electricista", "estado": "Cerrada", "fecha": "2023-11-10"},
  ];

  void _deletePublication(int index) {
    setState(() {
      publications.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Publicaciones'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: publications.length,
        itemBuilder: (context, index) {
          final publication = publications[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(publication["puesto"]!),
              subtitle: Text("Estado: ${publication["estado"]}\nFecha: ${publication["fecha"]}"),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => _deletePublication(index),
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
