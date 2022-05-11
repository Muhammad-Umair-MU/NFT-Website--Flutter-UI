import 'package:flutter/material.dart';

class Clients extends StatelessWidget {
  const Clients({Key? key,required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: size.width,
        height: 400.0,
        color: Colors.black,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _images('coinbase.png', 50, 150),
              _sizedBox(),
              _images('blockchain.png', 70.0, 300.0),
              _sizedBox(),
              _images('binance.png', 50.0, 200.0),
              _sizedBox(),
              Flexible(
                child: Image.asset(
                  'clients/bitmex.png',
                  height: 50,
                  width: 180.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBox() {
    return const SizedBox(width: 120.0);
  }

  Flexible _images(label,width,height) {
    return Flexible(child: Image.asset(
      'clients/$label',
      height: width,
      width: height,
    ));
  }



}
