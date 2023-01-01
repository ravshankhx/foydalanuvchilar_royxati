import 'package:flutter/material.dart';

class FoydalanuvchiQismi extends StatelessWidget {
  final String id;
  final String ismi;
  final String telefon;
  final String rasmManzili;
  final Function foydalanuvchiniUchirish;

  FoydalanuvchiQismi(
      {required this.id,
      required this.ismi,
      required this.rasmManzili,
      required this.telefon,
      required this.foydalanuvchiniUchirish});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      //listtile royxat elementi ozini standart dizaynlari bilan misol uchun
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(rasmManzili),
          ),
          title: Text(
            ismi,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text(telefon),
          trailing: IconButton(
            onPressed: () {
              foydalanuvchiniUchirish(id);
            },
            icon: Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
