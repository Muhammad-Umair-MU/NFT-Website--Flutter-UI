import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TopBar extends StatefulWidget {
  const TopBar({Key? key, required this.width}) : super(key: key);

  final double width;

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool _exploreHover = false;
  bool _creatorsHover = false;
  bool _communityHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: widget.width - 120.0,
      height: 66.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 200.0),
            child: Image.asset(
              'logo.png',
              width: 66.0,
              height: 66.0,
            ),
          ),
          const Spacer(),
          _textButton(
              label: 'Explore',
              pressed: false,
              callback: () {
                setState(() {
                  _exploreHover = !_exploreHover;
                });
              }),
          _textButton(
              label: 'Creator',
              pressed: _creatorsHover,
              callback: () {
                setState(() {
                  _creatorsHover = !_creatorsHover;
                });
              }),
          _textButton(
              label: 'Community',
              pressed: _communityHover,
              callback: () {
                setState(() {
                  _communityHover = !_communityHover;
                });
              }),
          const SizedBox(
            width: 200.0,
          ),
          OutlinedButton(
              onPressed: () {},
              child: Text(
                'Connect Wallet',
                style: GoogleFonts.workSans(
                    color: const Color(0xFFFFCE4E),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(const Color(0xFFE9D7A7)),
                  side: MaterialStateProperty.all(const BorderSide(
                      color: Color(0xFFFFCE4E), style: BorderStyle.solid)),
                  fixedSize: MaterialStateProperty.all(const Size(195, 64.0)))),
        ],
      ),
    );
  }

  Widget _textButton({label, required bool pressed, callback}) {
    Color buttonColor = Colors.white;
    return TextButton(
        onPressed: () {
          callback();
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  // context.read<borderAndColor>().hoverAndColor();
                  return const Color(0xFFFFCE4E);
                }
                return const Color(0xFFF5FBF2);
              }),
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 20.0),
          padding: const EdgeInsets.only(
            bottom: 5, // Space between underline and text
          ),
          decoration: pressed
              ? BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: buttonColor,
                    width: 2.0, // Underline thickness
                  )))
              : null,
          child: Text(label,
              style: GoogleFonts.workSans(
                  fontSize: 20.0, fontWeight: FontWeight.normal)),
        ));
  }
}