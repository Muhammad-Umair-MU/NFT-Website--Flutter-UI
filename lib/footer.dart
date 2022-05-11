import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key,required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: size.width,
        height: 512,
        decoration: const BoxDecoration(color: Color(0xFF251928),
        image: DecorationImage(
          image: AssetImage('footer/img_1.png'),
          alignment: Alignment.topLeft,filterQuality: FilterQuality.high
        )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 70.0,
            ),
            Flexible(
              child: Image.asset('footer/footer_logo.png',
                  width: 200.0,
                  height: 200.0,
                  filterQuality: FilterQuality.high),
            ),
            const SizedBox(
              width: 40.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Nec, enim sed lacus, magna pharetra.\nPhasellus tincidunt nulla pharetra\ngravida est.',
                    style: GoogleFonts.workSans(
                        color: const Color(0xFF96839B),
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal)),
                Image.asset('footer/footer_social_icons.png',
                    width: 220.0,
                    height: 105.0,
                    filterQuality: FilterQuality.high),
                Text('All rights reserved@2021',
                    style: GoogleFonts.workSans(
                        color: const Color(0xFF96839B),
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal)),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About us',
                    style: GoogleFonts.workSans(
                        color: const Color(0xFFF5FBF2),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
                _textButton('About NFTs'),
                _textButton('Live Auctions'),
                _textButton('NFT Blog'),
                _textButton('Activity'),
              ],
            ),
            const SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Support',
                    style: GoogleFonts.workSans(
                        color: const Color(0xFFF5FBF2),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
                _textButton('Help & Support'),
                _textButton('Item Details'),
                _textButton('Author Profile'),
                _textButton('Collection'),
                const SizedBox(
                  width: 70.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextButton _textButton(
  String label,
) {
  return TextButton(
    onPressed: () {},
    child: Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Text(label,
          style: GoogleFonts.workSans(
              color: const Color(0xFF96839B),
              fontSize: 20.0,
              fontWeight: FontWeight.w500)),
    ),
  );
}
