import 'package:flutter/material.dart';

//import 'package:bmi_calculator_app/bmi_screen.dart';
class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  BMIResultScreen(
      {required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0f1e),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0f1e),
        centerTitle: true,
        title: const Text(
          "BMI Result",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff1a1b2d), width: 5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/WhatsApp Image 2024-03-11 at 19.58.27_262c93b4.jpg',
                  width: 340,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 140,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xffe6144b)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gender : ${isMale ? 'Male' : 'Female'} ",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "BMI Result : $result ",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "Age : $age ",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
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
