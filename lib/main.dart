import 'package:flutter/material.dart';

main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> listItem = [
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('0'),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/one.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Lifestyle Sale',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      child: Center(
                        child: Text(
                          'Shop Now',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: listItem
                    .map(
                      (list) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(list), fit: BoxFit.cover),
                        ),
                        child: Transform.translate(
                          offset: const Offset(50, -50),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 65, vertical: 63),
                            child: const Icon(Icons.bookmark_border, size: 15),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
