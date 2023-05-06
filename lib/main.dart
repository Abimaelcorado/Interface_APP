import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'components/buttons.dart';
import 'components/card_games.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );

  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Futter Aplication",
      home: Container(
        color: const Color.fromARGB(255, 245, 103, 60),
        child: Column(
          children: [
            Container(
              height: 220,
              color: const Color.fromARGB(255, 245, 103, 60),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Bem vindo, Abimael!", 
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("O que deseja jogar hoje?",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                            decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage("assets/image/avatar.jpg"),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 235, 235, 235),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8.0,
                    ),
                  ]
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Buttons("Ação"),
                              Buttons("Aventura"),
                              Buttons("RPG"),
                              Buttons("Estratégia"),
                              Buttons("Esportes"),
                              Buttons("Simulação"),
                              Buttons("Plataforma"),
                              Buttons("Luta"),
                              Buttons("Sobrevivência"),
                              Buttons("Online"),
                              Buttons("Casual"),
                              Buttons("Corrida"),
                              Buttons("Tabuleiro"),
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Todos os jogos",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 20,),
                              Card_Games(title: "Free Fire", category: "Ação", rating: 4.5, image: "assets/image/freefire.jfif",),
                              Card_Games(title: "Standoff 2", category: "Ação", rating: 5, image: "assets/image/standoff2.jfif",),
                              Card_Games(title: "Farlight 84", category: "Ação", rating: 3.4, image: "assets/image/starlight84.jfif",),
                              Card_Games(title: "Swordigo", category: "Aventura", rating: 3, image: "assets/image/suordigo.jfif",),
                              Card_Games(title: "The Room", category: "Aventura", rating: 4.7, image: "assets/image/theroom.jfif",),
                              Card_Games(title: "Oddmar", category: "Aventura", rating: 4.7, image: "assets/image/oddmar.jfif",),
                              Card_Games(title: "Eternium", category: "RPG", rating: 3, image: "assets/image/eternium.jfif",),
                              Card_Games(title: "LifeAfter", category: "RPG", rating: 4.7, image: "assets/image/lifeafter.jfif",),
                              Card_Games(title: "Reaper", category: "RPG", rating: 4.7, image: "assets/image/reaper.jfif",),
                              Card_Games(title: "Clash Royale", category: "Estratégia", rating: 3, image: "assets/image/clashroyale.jfif",),
                              Card_Games(title: "Boom Beach", category: "Estratégia", rating: 4.7, image: "assets/image/boombeach.jfif",),
                              Card_Games(title: "Redcon", category: "Estratégia", rating: 4.7, image: "assets/image/redcon.jfif",),
                            ],
                          ),
                        ),
                      ],
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