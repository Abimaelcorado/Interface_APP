import 'package:flutter/material.dart';

class Rating_stars extends StatelessWidget {

  final double rating;
  final double tamanho;
  int? ratingcount;

  Rating_stars({
    super.key, 
    required this.rating,
    required this.ratingcount,
    this.tamanho = 18,
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> _starlist = [];

    int realnumber = rating.floor();
    int partnumber = ((rating - realnumber) * 10).ceil();
    
    for (int i  = 0; i < 5; i++){
      if (i < realnumber){
        _starlist.add(
          Icon(
            Icons.star,
            color: const Color.fromARGB(216, 255, 193, 7),
            size: tamanho,
          )
        );
      }
      else if(i == realnumber){
        _starlist.add(
          SizedBox(
            height: tamanho,
            width: tamanho,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(216, 255, 193, 7),
                  size: tamanho,
                ),
                ClipRect(
                  clipper: _Clipper(part: partnumber),
                  child: Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 148, 148, 148),
                    size: tamanho,
                  ),
                )
              ],
            ),
          )
        );
      }
      else{
        _starlist.add(
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 148, 148, 148),
            size: tamanho,
          )
        );
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children:
        _starlist,
    );
  }
}

class _Clipper extends CustomClipper<Rect>{

  final int part;

  _Clipper({required this.part});

  Rect getClip(Size size){
    return Rect.fromLTRB(
      (size.width / 10 ) * part,
      0.0,
      size.width,
      size.height
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => true;
}