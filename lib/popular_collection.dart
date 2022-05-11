import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCollection extends StatelessWidget {
  const PopularCollection({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: size.width,
      height: 900.0,
      color: Colors.black,
      child: Column(
        children: [
          Flexible(
            child: Image.asset('popular_collection/popular_collection_logo.png',
                width: 500.0, height: 130.0),
          ),


          SizedBox(
            height: 430,
            child: Scrollbar(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 200.0,),
                  SizedBox(height: 430, width: 510.0, child: _card('img.png')),
                  SizedBox(
                      height: 430, width: 525.0, child: _card('img_1.png')),
                  SizedBox(
                      height: 430, width: 525.0, child: _card('img_2.png')),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Flexible(
            child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: GoogleFonts.workSans(
                      color: const Color(0xFFFFCE4E),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xFFE9D7A7)),
                    side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xFFFFCE4E), style: BorderStyle.solid)),
                    fixedSize:
                        MaterialStateProperty.all(const Size(260, 64.0)))),
          ),
        ],
      ),
    ));
  }
}

Widget _card(String imageLabel) {
  return Card(
    color: const Color(0xFF3D2942),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Flexible(
            child: Image.asset(
              'popular_collection/$imageLabel',
              width: 470.0,
              height: 290.0,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              CircleAvatar(
                child: Image.asset('popular_collection/circular_avatar.png'),
                radius: 32.0,
                foregroundColor: null,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text('By @wizard',
                  style: GoogleFonts.workSans(
                      color: const Color(0xFFF5FBF2),
                      fontSize: 32.0,
                      fontWeight: FontWeight.w600)),
              const Spacer(),
              Text('ERC-721',
                  style: GoogleFonts.workSans(
                      color: const Color(0xFFC2B5C6),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ],
      ),
    ),
  );
}
