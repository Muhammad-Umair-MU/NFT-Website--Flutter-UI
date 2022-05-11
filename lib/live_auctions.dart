import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveAuctions extends StatelessWidget {
  const LiveAuctions({Key? key,required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height + 30.0,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('live_auctions/img.png'),
            alignment: Alignment.topLeft,
            fit: BoxFit.contain
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset('assets/live_auctions/live_auctions_logo.png',
                  width: 500.0, height: 130.0),
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                card(imageLabel: 'assets/live_auctions/img1.png'),
                card(imageLabel: 'assets/live_auctions/img2.png'),
                card(imageLabel: 'assets/live_auctions/img3.png'),
              ],
            ),
            const SizedBox(height: 20.0,),
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
                      fixedSize: MaterialStateProperty.all(const Size(260, 64.0)))),
            ),
          ],
        ),
      ),
    );
  }
}

Widget card({
  required String imageLabel,
}) {
  return Flexible(
    child: SizedBox(
      width: 500.0,
      height: 700.0,
      child: Card(
        color: const Color(0xFF3D2942),
        elevation: 5.0,
        shadowColor: Colors.white.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(imageLabel, width: 430, height: 400.0),
              SizedBox(
                width: 430,
                child: Row(
                  children: [
                    CircleAvatar(
                      child:
                          Image.asset('assets/live_auctions/circular_avatar.png'),
                      radius: 35.0,
                      foregroundColor: null,
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Virtual Art',
                            style: GoogleFonts.workSans(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600)),
                        Text('By @wizard',
                            style: GoogleFonts.workSans(
                                color: const Color(0xFFBDAAC1), fontSize: 20)),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.heart_broken_sharp,
                        size: 28.0, color: Color(0xFF76607A)),
                    Text('92',
                        style: GoogleFonts.workSans(
                            color: const Color(0xFF76607A), fontSize: 32))
                  ],
                ),
              ),
              SizedBox(
                width: 410.0,
                height: 100.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Current Bid',
                        style: GoogleFonts.workSans(
                            color: const Color(0xFFC6BFC8), fontSize: 20)),
                    const Spacer(),
                    Text('4.48 ETH',
                        style: GoogleFonts.workSans(
                            color: Colors.white, fontSize: 20)),
                  ],
                ),
              ),
              const Spacer(),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Place a Bid',
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
                      fixedSize: MaterialStateProperty.all(const Size(430, 64.0)))),
            ],
          ),
        ),
      ),
    ),
  );
}
