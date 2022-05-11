import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget heroWidget() {
  return Container(
    width: 500,
    height: 600,
    margin: const EdgeInsets.only(bottom: 10.0),
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/candy.png'), fit: BoxFit.cover)),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 45.0),
          width: 500.0,
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.5)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Current Bid',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    '0.99 ETh',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Ends in',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    '25 hrs',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(25.0),
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text(
                    'Artist',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@Wizard',
                    style: TextStyle(fontSize: 27.0),
                  ),
                ],
              ),
              const Spacer(),
              buildMaterialButton('Start Bid', 205, 72)
            ],
          ),
        )
      ],
    ),
  );
}

MaterialButton buildMaterialButton(label, width, height) {
  return MaterialButton(
    onPressed: () {},
    minWidth: width,
    height: height,
    color: const Color(0xFFFFCE4E),
    child: Text(label,
        style:
            GoogleFonts.workSans(fontSize: 28.0, fontWeight: FontWeight.w600)),
  );
}
