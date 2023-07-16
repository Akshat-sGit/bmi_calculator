import 'package:flutter/material.dart';
import 'main.dart'; 

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Screen 1"),
      ),
      body: Center(child: ElevatedButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const BMICalculator(); 
        })
        );
      }, 
        child:const Text("Go to main screen") 
         
        )
      ),
    );
  }
}
