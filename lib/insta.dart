import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List imagess = [
    'assets/smile_in_pain.png',
    'assets/chicken_biryani.jpg',
    'assets/palak_paneer.jpg'
  ];
  List namess = ['Smile in Pain', 'prof1', 'prof2'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.camera_alt_outlined),
        title: Center(
            child: Text(
          'Instagram',
          style: TextStyle(fontFamily: 'billabong'),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.send_outlined),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.camera_alt_outlined),
            Icon(Icons.favorite_border),
            Icon(Icons.person_2_outlined)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Stories',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.play_arrow),
                    Text(
                      'Watch all',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 90, // Define a proper height for horizontal ListView
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: namess.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                image: DecorationImage(
                                    image: AssetImage(imagess[index]),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            width: 80,
                          ),

                          // SizedBox(
                          //   height: 1,
                          // ),
                          Text(namess[index]),
                        ]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/smile_in_pain.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Smile in Pain',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.more_horiz)],
                    )
                  ],
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        width: double.infinity,
                        height: 230,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage('assets/smile_in_pain.png'),
                            )),
                      ))
                    ],
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Icon(Icons.favorite_border),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.circle_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.send_outlined),
                        ),
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.bookmark_border)],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      '90399 Likes',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Its Smile in Pain !!!',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'hala_madrid',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 8,
                          color: Colors.lightBlue),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
