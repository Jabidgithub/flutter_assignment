import 'package:flutter/material.dart';
import 'package:flutter_surprise_test/app/routes/router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Define your icon data
  List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];

  // Define your colors
  Color _unselectedColor = Color.fromARGB(255, 204, 213, 218);
  Color _selectedColor = Color.fromARGB(255, 129, 64, 251).withOpacity(0.68);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.more_horiz,
          size: 30,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10.0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Icon(
              Icons.person_2_rounded,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                )),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Jabid",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "BUS",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.2,
            child: CardSection(size: size),
          ),
          Positioned(
            top: size.height * 0.5,
            child: CardSection(size: size),
          ),
          ElevatedButton(
            onPressed: () {
              print("ahdfjhajkhdas 1");
              try {
                Navigator.pushNamed(context, Routes.homeTwoRoute);
              } catch (e) {
                print("ahdfjhajkhdas $e");
              }
            },
            child: Text(
              "Search",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _icons.asMap().entries.map((MapEntry<int, IconData> entry) {
          return BottomNavigationBarItem(
            icon: Icon(entry.value),
            label: 'Tab ${entry.key + 1}',
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedColor,
        unselectedItemColor: _unselectedColor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.7,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 204, 213, 218),
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          CardtextRow(),
          CardtextRow(),
        ],
      ),
    );
  }
}

class CardtextRow extends StatelessWidget {
  const CardtextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Icon(
            Icons.local_offer,
            size: 30,
            color: const Color.fromARGB(255, 129, 64, 251).withOpacity(0.68),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Text(
                  "Location 1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Date")
              ],
            ),
          ),
          Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Hello ',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 129, 64, 251)
                              .withOpacity(0.68),
                        )),
                    const TextSpan(
                        text: 'world',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
