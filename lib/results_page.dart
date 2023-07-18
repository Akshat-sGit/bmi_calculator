import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/widgets/boxes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'widgets/calculate_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String gen;
  final int aged;

  const ResultsPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      required this.aged,
      required this.gen
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BMI CALCULATOR",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: Colors.green,
                fontWeight: FontWeight.w900,
                fontSize: 22.5,
               )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Text(
            "Your Result",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.green,
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: const Color.fromARGB(255, 29, 30, 50),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Gender: $gen",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 20.0, 
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent
                        ),
                      ),
                      Text(
                        "Age: $aged",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 20.0, fontWeight: FontWeight.bold, 
                            color: Colors.blueAccent
                            ),
                      )
                    ],
                  ),
                  Container(
                    padding:const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:const Color.fromARGB(149, 9, 9, 16)
                    ),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BMICalculator()));
              },
              child: const CalculateCard(
                cal: 'Re-Calculate',
              )),
        ],
      ),
    );
  }
}
