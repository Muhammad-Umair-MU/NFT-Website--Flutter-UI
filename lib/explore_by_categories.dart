import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreByCategories extends StatelessWidget {
  const ExploreByCategories({Key? key,required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
            color: Color(0xFF251928),
            image: DecorationImage(
              image: AssetImage(
                  'explore_by_categories/explore_by_categories_blur_effect.png'),
              alignment: Alignment.topCenter,filterQuality: FilterQuality.high
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                  'explore_by_categories/explore_by_categories_logo.png',
                  width: 500.0,
                  height: 130.0),
            ),
            SizedBox(
              height: 520.0,
              child: Scrollbar(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 200.0,),
                    Cardd(imageLabel: 'explore_by_categories/img_1.png'),
                    Cardd(imageLabel: 'explore_by_categories/img.png'),
                    Cardd(imageLabel: 'explore_by_categories/img_3.png'),
                    Cardd(imageLabel: 'explore_by_categories/img_4.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Cardd extends StatefulWidget {
  Cardd({Key? key, required this.imageLabel}) : super(key: key);

  final String imageLabel;
  bool onHover = false;

  @override
  State<Cardd> createState() => _CarddState();
}

class _CarddState extends State<Cardd> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 415.0,
      child: Card(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        color: const Color(0xFF3D2942),
        elevation: 5.0,
        shadowColor: Colors.white.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                width: 350.0,
                height: 306.0,
                child: MouseRegion(
                    onHover: (s) {
                      setState(() {
                        widget.onHover = true;
                      });
                    },
                    onExit: (e) => setState(() {
                          widget.onHover = false;
                        }),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(widget.imageLabel,
                            width: 350.0, height: 306.0),
                        if (widget.onHover)
                          MaterialButton(
                            onPressed: () {},
                            color: const Color(0xFFFFCE4E),
                            child: Text('Place a Bid',
                                style: GoogleFonts.workSans(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600)),
                          )
                      ],
                    )),
              ),
              SizedBox(
                width: 430,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                          'assets/live_auctions/circular_avatar.png'),
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
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600)),
                        Text('By @wizard',
                            style: GoogleFonts.workSans(
                                color: const Color(0xFFBDAAC1), fontSize: 18.0)),
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
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------------------
// Method is under class scope
// Widget _card({required String imageLabel, required bool showButton}) {
//   bool sb = false;
//   return SizedBox(
//     width: 415.0,
//     child: Card(
//       color: Color(0xFF3D2942),
//       elevation: 5.0,
//       shadowColor: Colors.white.withOpacity(0.5),
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Column(
//           children: [
//             SizedBox(
//               width: 350.0,
//               height: 306.0,
//               child: Stack(
//                 children: [
//                   SizedBox(
//                     width: 350,
//                     height: 306,
//                     child: MouseRegion(
//                       onHover: (s) {
//                         setState(() {
//                           sb = true;
//                         });
//                       },
//                       onExit: (e) => setState(() {
//                         sb = false;
//                       }),
//                       child: Image.asset(imageLabel,
//                           width: 350.0, height: 306.0),
//                     ),
//                   ),
//                   if (sb)
//                     Positioned(
//                       bottom: -2,
//                       left: 5,
//                       child: MaterialButton(
//                         onPressed: () {},
//                         color: const Color(0xFFFFCE4E),
//                         child: Text('Place a Bid',
//                             style: GoogleFonts.workSans(
//                                 fontSize: 28.0, fontWeight: FontWeight.w600)),
//                       ),
//                     )
//                 ],
//               ),
//             ),
//             SizedBox(
//               width: 430,
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     child: Image.asset(
//                         'assets/live_auctions/circular_avatar.png'),
//                     radius: 35.0,
//                     foregroundColor: null,
//                   ),
//                   SizedBox(width: 10.0),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Virtual Art',
//                           style: GoogleFonts.workSans(
//                               color: Colors.white,
//                               fontSize: 24.0,
//                               fontWeight: FontWeight.w600)),
//                       Text('By @wizard',
//                           style: GoogleFonts.workSans(
//                               color: Color(0xFFBDAAC1), fontSize: 18.0)),
//                     ],
//                   ),
//                   const Spacer(),
//                   const Icon(Icons.heart_broken_sharp,
//                       size: 28.0, color: Color(0xFF76607A)),
//                   Text('92',
//                       style: GoogleFonts.workSans(
//                           color: Color(0xFF76607A), fontSize: 32))
//                 ],
//               ),
//             ),
//             SizedBox(
//               width: 410.0,
//               height: 100.0,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text('Current Bid',
//                       style: GoogleFonts.workSans(
//                           color: Color(0xFFC6BFC8), fontSize: 20)),
//                   Spacer(),
//                   Text('4.48 ETH',
//                       style: GoogleFonts.workSans(
//                           color: Colors.white, fontSize: 20)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
