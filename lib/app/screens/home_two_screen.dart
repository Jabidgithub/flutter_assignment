import 'package:flutter/material.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
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
        actions: const [
          Icon(
            Icons.more_horiz,
            size: 30,
            color: Colors.white,
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
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location 1",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.compare_arrows_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Location 2",
                    style: TextStyle(
                        fontSize: 15,
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
        ],
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
