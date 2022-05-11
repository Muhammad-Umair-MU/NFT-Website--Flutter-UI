import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: size.width,
            height: 400.0,
            decoration: const BoxDecoration(
                color: Color(0xFF372839),
                image: DecorationImage(
                    image: AssetImage('how_it_works/img.png'),
                    alignment: Alignment.topCenter,
                    filterQuality: FilterQuality.high)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'How it Works',
                  style: GoogleFonts.oxanium(
                      color: const Color(0xFFF5FBF2),
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Flexible(
                    child: Image.asset('how_it_works/how_it_works.png',
                        width: 1340, height: 160.0)),
              ],
            )));
  }
}
// Image.asset('how_it_works.png', width: 1340, height: 335)),
