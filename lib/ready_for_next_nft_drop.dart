import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String? validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || !regex.hasMatch(value)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

class ReadyForNextNFTDrop extends StatelessWidget {
  const ReadyForNextNFTDrop({Key? key,required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: size.width,
        height: 550.0,
        decoration: const BoxDecoration(
            color: Color(0xFF1C121F),
            image: DecorationImage(
                image: AssetImage('ready_for_next_nft_drop.png'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Ready For Next NFT Drop?',
                style: GoogleFonts.oxanium(
                    color: const Color(0xFFF5FBF2), fontSize: 64.0)),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 380.0,
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(color: Colors.white),
                      autocorrect: false,
                      enableSuggestions: true,
                      validator: (value) => validateEmail(value),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 30.0, bottom: 30.0, left: 10.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFE7B226), width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFE7B226), width: 1.5),
                        ),
                        filled: true,
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                        label: Text(
                          'umair.ims19@gmail.com',
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text('Subscribe',
                      style: TextStyle(
                        color: Color(0xFF251928),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      )),
                  color: const Color(0xFFE7B226),
                  height: 78.0,
                  minWidth: 210.0,
                  hoverColor: Colors.amber.shade900,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
