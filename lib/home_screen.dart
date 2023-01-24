import 'package:flutter/material.dart';
import 'package:tic_tac_toe/button.dart';
import 'package:tic_tac_toe/playground.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user1 = TextEditingController();
  final user2 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    user1.dispose();
    user2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.52,
              child: Image.network(
                'https://www.nicepng.com/png/detail/205-2056130_tic-tac-toe-tic-tac-toe-png.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              margin: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 8,
                    offset: const Offset(1, 1),
                    color: Colors.greenAccent.withOpacity(0.40),
                  ),
                ],
              ),
              child: TextField(
                controller: user1,
                decoration: InputDecoration(
                  hintText: "Enter Player-1 Name",
                  prefixIcon: const Icon(
                    Icons.circle_outlined,
                    color: Colors.green,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 5.0,
                right: 5.0,
              ),
              margin: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 8,
                    offset: const Offset(1, 1),
                    color: Colors.redAccent.withOpacity(0.35),
                  ),
                ],
              ),
              child: TextField(
                controller: user2,
                decoration: InputDecoration(
                  hintText: "Enter Player-2 Name",
                  prefixIcon: const Icon(
                    Icons.close_outlined,
                    color: Colors.red,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GameScreen(
                      player1: user2.text,
                      player2: user1.text,
                    ),
                  ),
                ),
              },
              child: const GlassMorphism(
                start: 0.2,
                end: 0.45,
                child: Center(
                  child: Text(
                    "Let's Play",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
