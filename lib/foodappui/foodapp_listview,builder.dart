import 'package:flutter/material.dart';

class Foodappui extends StatefulWidget {
  const Foodappui({super.key});

  @override
  State<Foodappui> createState() => _FoodappuiState();
}

class _FoodappuiState extends State<Foodappui> {
  List itemss = [
    'Palak Paneer',
    'Butter Naan',
    'Chicken Biryani',
    'Jeera Rice',
    'Kabuli Polao',
    'Shahi Paneer',
    'Palak Paneer',
    'Butter Naan',
    'Chicken Biryani',
    'Jeera Rice',
    'Kabuli Polao',
    'Shahi Paneer',
  ];
  List imagess = [
    'assets/palak_paneer.jpg',
    'assets/butter_naan.webp',
    'assets/chicken_biryani.jpg',
    'assets/jeera_rice.jpg',
    'assets/kabuli-pulao.webp',
    'assets/shahi_paneer.png',
    'assets/palak_paneer.jpg',
    'assets/butter_naan.webp',
    'assets/chicken_biryani.jpg',
    'assets/jeera_rice.jpg',
    'assets/kabuli-pulao.webp',
    'assets/shahi_paneer.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Recipes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: itemss.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(
                                0,
                                5,
                              ),
                              blurRadius: 10)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            imagess[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          itemss[index],
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
