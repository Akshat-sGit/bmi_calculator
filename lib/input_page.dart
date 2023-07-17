// import 'dart:ui';
import 'package:bmi_calculator/widgets/calculate_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/boxes.dart';
import 'widgets/icon_cont.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:numberpicker/numberpicker.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color.fromARGB(255, 29, 30, 50);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color.fromARGB(255, 0, 0, 0);

// enum Gender{male, female,}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int count = 120;
  int weight = 0;
  int age = 0;
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  late int gender;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text('BMI CALCULATOR',
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
                ])),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColor,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('Height',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF8D8E98),
                        fontWeight: FontWeight.w900,
                      )),
                  Text('$count cm',
                      style: const TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      )),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.red,
                      overlayColor: const Color(0xFFEB1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      activeColor: Colors.red,
                      inactiveColor: Colors.white,
                      value: count.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          count = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color(0xFF8D8E98),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text('$weight',
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          NumberPicker(
                              axis: Axis.horizontal,
                              minValue: 0,
                              maxValue: 200,
                              itemWidth: 50,
                              haptics: true,
                              itemHeight: 40,
                              value: weight,
                              onChanged: (value1) =>
                                  setState(() => weight = value1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: Colors.black),
                                  color: const Color.fromARGB(50, 0, 0, 0)))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text('Age',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color(0xFF8D8E98),
                              fontWeight: FontWeight.w900,
                            )),
                        Text('$age',
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            NumberPicker(
                                minValue: 0,
                                maxValue: 100,
                                value: age,
                                haptics: true,
                                axis: Axis.horizontal,
                                itemWidth: 50,
                                itemHeight: 40,
                                onChanged: (value2) =>
                                    setState(() => age = value2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.black),
                                    color: const Color.fromARGB(50, 0, 0, 0)))
                          ],
                        ),
                      ]),
                ),
              )
            ],
          )),
          const CalculateCard(),
        ],
      ),
    );
  }
}
