import 'package:flutter/material.dart';
import 'Rating_stars.dart';

class Card_Games extends StatelessWidget {
  
  
  final String title;
  final String category;
  final double rating;
  final String image;

  const Card_Games({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 226, 226, 226),
          borderRadius: BorderRadius.circular(20)
        ),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 204, 204, 204),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(image),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 127,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 24),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.none,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Row(
                      children: [
                        Rating_stars(rating: rating, ratingcount: 15)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(193, 255, 193, 7),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text("Ver mais",
                        style: TextStyle(
                          fontSize: 11,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

