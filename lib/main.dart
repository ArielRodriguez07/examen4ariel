import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InventoryList(),
    );
  }
}

class InventoryList extends StatelessWidget {
  final List<Map<String, dynamic>> inventoryData = [
    {
      'url_imagen':
          'https://raw.githubusercontent.com/ArielRodriguez07/arielexamen4/refs/heads/main/inventario.webp',
      'Id_inventario': 1,
      'Id_videojuegos': 101,
      'cantidad_disponible': 10,
      'Id_proveedor': 1001,
      'nombre': 'Producto A',
      'apellido': 'Proveedor X',
    },
    {
      'url_imagen':
          'https://raw.githubusercontent.com/ArielRodriguez07/arielexamen4/refs/heads/main/inventatrio2.webp',
      'Id_inventario': 2,
      'Id_videojuegos': 102,
      'cantidad_disponible': 5,
      'Id_proveedor': 1002,
      'nombre': 'Producto B',
      'apellido': 'Proveedor Y',
    },
    {
      'url_imagen':
          'https://raw.githubusercontent.com/ArielRodriguez07/arielexamen4/refs/heads/main/inventario3.png',
      'Id_inventario': 3,
      'Id_videojuegos': 103,
      'cantidad_disponible': 20,
      'Id_proveedor': 1003,
      'nombre': 'Producto C',
      'apellido': 'Proveedor Z',
    },
    {
      'url_imagen':
          'https://raw.githubusercontent.com/ArielRodriguez07/arielexamen4/refs/heads/main/inventario4.webp',
      'Id_inventario': 4,
      'Id_videojuegos': 104,
      'cantidad_disponible': 15,
      'Id_proveedor': 1004,
      'nombre': 'Producto D',
      'apellido': 'Proveedor W',
    },
    {
      'url_imagen':
          'https://raw.githubusercontent.com/ArielRodriguez07/arielexamen4/refs/heads/main/inventario5.png',
      'Id_inventario': 5,
      'Id_videojuegos': 105,
      'cantidad_disponible': 8,
      'Id_proveedor': 1005,
      'nombre': 'Producto E',
      'apellido': 'Proveedor V',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventario'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: inventoryData.map((item) {
            return Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(item['url_imagen']),
                      ),
                      title: Text(
                        item['nombre'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        item['apellido'],
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                    Text('Id_inventario: ${item['Id_inventario']}'),
                    Text('Id_videojuegos: ${item['Id_videojuegos']}'),
                    Text('Cantidad disponible: ${item['cantidad_disponible']}'),
                    Text('Id_proveedor: ${item['Id_proveedor']}'),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
