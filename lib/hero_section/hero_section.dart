import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_website/hero_section/navigation_bar.dart';


import 'hero_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,required this.size}) : super(key: key);

  final Size size;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: widget.size.width,
        height: widget.size.height,
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('img.png'), alignment: Alignment.centerLeft,filterQuality: FilterQuality.high)),
        child: SizedBox(
          height: 500.0,
          child: Stack(
            children: [
              Positioned(
                  right: 660,
                  top: 800.0,
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF6D5B72).withOpacity(0.6)),
                    child: const Center(
                      child: Icon(Icons.arrow_downward),
                    ),
                  )),
              Positioned(
                  right: -100,
                  child: SizedBox(
                    width: 770,
                    height: 1063,
                    child: Image.asset(
                      'blur_effect.png',
                    ),
                  )),
              TopBar(width: widget.size.width),
              Positioned(right: 100.0, top: 150.0, child: heroWidget()),
              Positioned(
                top: 150.0,
                left: 190.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 700.0,
                        height: 390,
                        child: RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Explore, Buy, and Sell the',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 86.0,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: ' Best     NFTs',
                                  style: TextStyle(
                                      fontSize: 86.0,
                                      color: Color(0xFFFFCE4E),
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
                    Row(
                      children: [
                        buildMaterialButton('Explore', 250, 80),
                        const SizedBox(
                          width: 25,
                        ),
                        buildMaterialButton('Create', 250, 80)
                      ],
                    ),
                    Container(
                      width: 600.0,
                      height: 120.0,
                      margin: const EdgeInsets.only(top: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          counter('32K', 'Auctions'),
                          counter('20k', 'Auctions'),
                          counter('12k', 'Creators')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column counter(counter, label) {
    return Column(children: [
      Text(counter,
          style: GoogleFonts.oxanium(
              fontSize: 62.0,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
      Text(label,
          style: GoogleFonts.workSans(
            color: const Color(0xFF9B9E9A),
            fontSize: 24.0,
          )),
    ]);
  }
}

// Provider class - Notifier
class borderAndColor with ChangeNotifier {
  Color _color = Colors.white;
  bool _onHover = false;

  bool get onHover => _onHover;

  void hoverAndColor() {
    _color == Colors.white ? _color = Colors.yellow : _color = Colors.white;
    _onHover == false ? _onHover = true : _onHover = false;
    notifyListeners();
  }
}

// -----------------------------------

// class TextButtonn extends StatelessWidget {
//   const TextButtonn(
//       {Key? key,
//       required this.label,
//       required this.onHover,
//       required this.hover})
//       : super(key: key);
//   final VoidCallback hover;
//   final String label;
//   final bool onHover;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//         onPressed: () {hover();},
//         style: ButtonStyle(
//           foregroundColor: MaterialStateProperty.resolveWith<Color>(
//               (Set<MaterialState> states) {
//             if (states.contains(MaterialState.hovered)) {
//               // context.read<borderAndColor>().hoverAndColor();
//
//
//
//               return Color(0xFFFFCE4E);
//             }
//
//             return Color(0xFFF5FBF2);
//           }),
//         ),
//         child: Container(
//           padding: const EdgeInsets.only(
//             bottom: 5, // Space between underline and text
//           ),
//           decoration: onHover
//               ? BoxDecoration(
//                   border: Border(
//                       bottom: BorderSide(
//                   color: Colors.white,
//                   width: 2.0, // Underline thickness
//                 )))
//               : null,
//           child: Text(label,
//               style: GoogleFonts.workSans(
//                   fontSize: 20.0, fontWeight: FontWeight.normal)),
//         ));
//   }
// }

//   Widget _textButton(label, context) {
//     return ChangeNotifierProvider(
//       create: (_) => borderAndColor(),
//       builder: (context, c) {
//         return TextButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               foregroundColor: MaterialStateProperty.resolveWith<Color>(
//                   (Set<MaterialState> states) {
//                 if (states.contains(MaterialState.hovered)) {
//                   context.read<borderAndColor>().hoverAndColor();
//                   return Color(0xFFFFCE4E);
//                 }
//                 return Color(0xFFF5FBF2);
//               }),
//             ),
//             child: Container(
//               padding: const EdgeInsets.only(
//                 bottom: 5, // Space between underline and text
//               ),
//               decoration: context.watch<borderAndColor>()._onHover
//                   ? BoxDecoration(
//                       border: Border(
//                           bottom: BorderSide(
//                       color: context.watch<borderAndColor>()._color,
//                       width: 2.0, // Underline thickness
//                     )))
//                   : null,
//               child: Text(label,
//                   style: GoogleFonts.workSans(
//                       fontSize: 20.0, fontWeight: FontWeight.normal)),
//             ));
//       },
//     );
//   }
// }
