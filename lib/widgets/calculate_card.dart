import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../input_page.dart';

class CalculateCard extends StatelessWidget {
  const CalculateCard({super.key, required this.cal});

  final String cal;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: bottomContainerColor,
      margin: const EdgeInsets.only(top: 10.0),
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(cal, 
          style: GoogleFonts.poppins(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
        )
      ),
    );
  }
}