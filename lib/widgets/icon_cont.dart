import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {super.key,
      required this.icon,
      required this.label,
      required this.colored});

  final String colored;
  final IconData icon;
  final String label;

  Color genderDep() {
    if (colored == "Male") {
      return Colors.blueAccent;
    } else if (colored == "Female") {
      return Colors.pink;
    } else {
      return Colors.white; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80.0,
            color: genderDep(),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
        ]);
  }
}
