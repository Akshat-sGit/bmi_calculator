import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BMI CALCULATOR",
        style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.5,
                shadows: [
                  const Shadow(
                    blurRadius: 2.0,
                    color: Colors.black,
                    offset: Offset(2.0, 2.0),
                  )
                ]
                )
        ), 
      ),
    );
  }
}