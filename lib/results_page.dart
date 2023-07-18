import 'package:bmi_calculator/widgets/boxes.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
             child: Text("Your Result",
             style: GoogleFonts.poppins(
              fontSize: 50.0, 
              fontWeight: FontWeight.w900, 
             ),
            )
          ),
            const Expanded( 
            flex: 5,
            child:ReusableCard(
              colour: Color.fromARGB(255, 29, 30, 50),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),

          )
        ],
      ),
    );
  }
}