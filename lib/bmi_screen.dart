import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double myHeight = 30.0;
  int myWeight = 50;
  int myAge = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0f1e),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0f1e),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: isMale
                                    ? const Color(0xffe6144b)
                                    : const Color(0xff1a1b2d)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.male,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Male",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: isMale
                                    ? const Color(0xff1a1b2d)
                                    : const Color(0xffe6144b)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.female,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Female",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: const Color(0xff1a1b2d)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${myHeight.round()}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Slider(
                          thumbColor: const Color(0xffe6144b),
                          activeColor: const Color(0xffe6144b),
                          inactiveColor:
                              const Color.fromARGB(218, 134, 142, 185),
                          value: myHeight,
                          max: 220.0,
                          min: 30.0,
                          onChanged: (value) {
                            setState(() {
                              myHeight = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: const Color(0xff1a1b2d)),
                          child: Column(
                            
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              const Text(
                                "Weight",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "$myWeight",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: const Color.fromARGB(
                                        218, 134, 142, 185),
                                    onPressed: () {
                                      setState(() {
                                        myWeight--;
                                      });
                                    },
                                heroTag: 'Weight-',
                                    child: const Icon(Icons.remove),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: const Color.fromARGB(
                                        218, 134, 142, 185),
                                    onPressed: () {
                                      setState(() {
                                        myWeight++;
                                      });
                                    },
                                    heroTag: 'Weight+',
                                    child: const Icon(Icons.add),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: const Color(0xff1a1b2d)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Age",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "$myAge",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: const Color.fromARGB(
                                        218, 134, 142, 185),
                                    onPressed: () {
                                      setState(() {
                                        myAge--;
                                      });
                                    },
                                    heroTag: 'Age-',
                                    child: const Icon(Icons.remove),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: const Color.fromARGB(
                                        218, 134, 142, 185),
                                    onPressed: () {
                                      setState(() {
                                        myAge++;
                                      });
                                    },
                                    heroTag: 'Age+',
                                    child: const Icon(Icons.add),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffe6144b),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(17.0),
                  bottomRight: Radius.circular(17.0),
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  double result = myWeight / pow(myHeight / 100, 2);
                  // print(result.round());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                          age: myAge,
                          isMale: isMale,
                          result: result.round(),
                        ),
                      ));
                },
                height: 60,
                child: const Text(
                  "CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
