import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({Key? key,required this.size}) : super(key: key);

    final Size size;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

        color: const Color(0xFF1C121F),
        child: Column(
          children: [
            const SizedBox(height: 15.0),
            Flexible(
              child: Image.asset('top_creators/top_creators_logo.png',
                  width: 500.0, height: 130.0),
            ),
            Container(
              margin: const EdgeInsets.only(left: 90.0, right: 90.0),
              height: 372.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: (6.0),
                shrinkWrap: true,
                children: [
                  _card('img.png'),
                  _card('img_1.png'),
                  _card('img_2.png'),
                  _card('img_3.png'),
                ],
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
                          color: Color(0xFFFFCE4E),
                          style: BorderStyle.solid)),
                      fixedSize:
                          MaterialStateProperty.all(const Size(260, 64.0)))),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _card(
  String imageLabel,
) {
  return Card(
    color: const Color(0xFF302034),
    child: Row(
      children: [
        Container(
          height: double.infinity,
          width: 3.0,
          color: Colors.red.shade400,
        ),
        const SizedBox(width: 20.0),
        CircleAvatar(
          child: Image.asset('top_creators/$imageLabel',filterQuality: FilterQuality.high,),
          radius: 35.0,
          foregroundColor: null,
        ),
        const SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Wizard Dev',
                style: GoogleFonts.oxanium(
                    color: const Color(0xFFF5FBF2),
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600)),
            Text('4.89 ETH',
                style: GoogleFonts.workSans(
                    color: const Color(0xFFBDAAC1),
                    fontSize: 24,
                    fontWeight: FontWeight.normal)),
          ],
        ),
        const Spacer(),
        Container(
          height: 70.0,
          width: 3.0,
          color: Colors.red.shade400,
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('33',
                style: GoogleFonts.workSans(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600)),
            Text('Items',
                style: GoogleFonts.workSans(
                    color: const Color(0xFFBDAAC1), fontSize: 20)),
          ],
        ),
        const SizedBox(width: 20.0),
      ],
    ),
  );
}
