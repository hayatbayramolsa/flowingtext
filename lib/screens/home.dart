import 'dart:async';
import 'package:flowingtext/data/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // TITLE
            Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(color: Color(0xFF9dbeb9)),
                child: Center(
                  child: Text(
                    "Flowing Text",
                    style: GoogleFonts.poppins(color: Color(0xFF194350)),
                  ),
                )),
            // CONTENT
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Text(text),
              ),
            ),
            // CONTROLS
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: Color(0xFF9dbeb9)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // speed
                  Row(
                    children: [
                      buildButton(
                        text: "-",
                        onPressed: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "1",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 24
                          ),
                        ),
                      ),
                      buildButton(
                        text: "+",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  // start-stop button
                  buildButton(
                    text: "Başlat",
                    icon: Icons.play_circle_fill,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildButton({String text, IconData icon, Function onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFFff8882))),
    child: Row(
      children: [
        icon != null ? Icon(icon) : Container(),
        SizedBox(width: 5),
        Text(
          text,
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ],
    ),
  );
}
