import 'package:flutter/material.dart';
import 'package:foydalanuvchilar_royxati/widgets/foydalanuvchi_qismi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoydalanuvchilarRuyxati(),
      theme: ThemeData(
        fontFamily: "RobotoSlab"
      ),
    );
  }
}

class FoydalanuvchilarRuyxati extends StatefulWidget {
  @override
  State<FoydalanuvchilarRuyxati> createState() => _FoydalanuvchilarRuyxatiState();
}

class _FoydalanuvchilarRuyxatiState extends State<FoydalanuvchilarRuyxati> {
  List<Map<String, String>> foydalanuvchilar = [
    {
      "id": "user1",
      "ismi": "Ann Neal",
      "telefon": "402-467-2335",
      "rasmManzili":
          "https://images.unsplash.com/photo-1516934024742-b461fba47600?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    },
    {
      "id": "user2",
      "ismi": "Own Kante",
      "telefon": "402-467-2335",
      "rasmManzili":
          "https://images.unsplash.com/photo-1516934024742-b461fba47600?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    },
    {
      "id": "user3",
      "ismi": "Ann Neal",
      "telefon": "402-467-2335",
      "rasmManzili":
          "https://images.unsplash.com/photo-1516934024742-b461fba47600?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    },
    {
      "id": "user4",
      "ismi": "Ann Neal",
      "telefon": "402-467-2335",
      "rasmManzili":
          "https://images.unsplash.com/photo-1516934024742-b461fba47600?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    }
  ];

  void foydalanuvchiniUchirish(String foydalanuvchiId){
    print("SALOM");
    setState(() {
      foydalanuvchilar.removeWhere((foydalanuvchi) {
       return foydalanuvchi["id"]==foydalanuvchiId;
      });
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //
      // ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Foydalanuvchilar Ro'yxati",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20,),
          //expanded = column yoki row ichida qolgan widgetlardan qolgan joyni boricha egallaydi
          Expanded(
            // listvieew esa royxat korinishi
            child: ListView(
              itemExtent: 90,
              children: foydalanuvchilar.map((foydalanuvchi) {
                print(foydalanuvchi["id"]);
                return FoydalanuvchiQismi(
                    id: foydalanuvchi["id"]!,
                    ismi: foydalanuvchi["ismi"]!,
                    rasmManzili: foydalanuvchi["rasmManzili"]!,
                    telefon: foydalanuvchi["telefon"]!, foydalanuvchiniUchirish: foydalanuvchiniUchirish,);
              }).toList(),
            ),
          )
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.search),),
    );
  }
}
