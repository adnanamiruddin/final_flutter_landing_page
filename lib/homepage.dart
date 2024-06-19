import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AppBar(
            title: const Text('Welcome Adnan!'),
            actions: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo_noxpark.jpeg'),
              ),
            ],
          ),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text(
              "Logo NoxSpark",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                ScrollView(imagePath: 'assets/images/image1.jpeg'),
                ScrollView(imagePath: 'assets/images/image2.jpg'),
                ScrollView(imagePath: 'assets/images/image3.jpg'),
                ScrollView(imagePath: 'assets/images/image4.jpeg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollView extends StatelessWidget {
  final String imagePath;

  const ScrollView({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 300,
      height: 500,
      margin: const EdgeInsets.only(right: 10),
    );
  }
}
