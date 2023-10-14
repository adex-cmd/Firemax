// ignore_for_file: library_private_types_in_public_api

import 'package:firemax/classes/informations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Informatonss(),
  ));
}

class Informatonss extends StatefulWidget {
  const Informatonss({Key? key}) : super(key: key);

  @override
  _InformatonssState createState() => _InformatonssState();
}

class _InformatonssState extends State<Informatonss> {
  static List<Informations> infom = [
    Informations(
        name: "Adelowo",
        price: 30000,
        info: "Weldone boss",
        favorite: true,
        email: "Adelowooluwatoba@gmail.com",
        address: "address",
        phone: 09071955983),
    Informations(
        name: "Daniel",
        price: 30000,
        info: "Weldone boss",
        favorite: true,
        email: "Adelowooluwatoba@gmail.com",
        address: "address",
        phone: 09071955983),
    Informations(
        name: "Grace",
        price: 30000,
        info: "Weldone boss",
        favorite: true,
        email: "Adelowooluwatoba@gmail.com",
        address: "address",
        phone: 09071955983)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: infom.length,
            itemBuilder: (context, index) {
              final user = infom[index].name;
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 400,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.redAccent),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: CircleAvatar(child: Text(user.substring(0,1))),
                    ),
                    title: Text(infom[index].info),
                    subtitle: Text(infom[index].email),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
