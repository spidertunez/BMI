import 'package:flutter/material.dart';
import 'package:task12/routes/p2.dart'; // Ensure this imports the `sec` class correctly

class one extends StatefulWidget {
  static const route = '/one';

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<one> {
  bool _isTapped1 = false;
  bool _isTapped2 = false;
  double _valslider = 130.0;
  int _counter = 30;
  int _age = 10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _decrementage() {
    setState(() {
      _age--;
    });
  }

  void _incrementage() {
    setState(() {
      _age++;
    });
  }

  void _bmicalc() {
    double weight = _counter.toDouble();
    double height = _valslider / 100;
    double calc = weight / (height * height);


    String message1 = calc >= 25
        ? 'You are overweight. You need to do some exercises.'
        : 'You have a normal body. Good job!';

    String message2 = calc >= 25
        ? 'UPNORMAL'
        : 'NORMAL';

    Navigator.pushNamed(
      context,
      sec.route,
      arguments: {
        'messages' :message2 ,
        'bmi': calc,
        'message': message1,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.cyan[900],
          ),
        ),
        centerTitle: true,
        elevation: 4.0,
        backgroundColor:Colors.brown[50],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isTapped1 = true;
                      _isTapped2 = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:  Colors.cyan[900],
                          boxShadow: _isTapped1
                              ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 15,
                              offset: Offset(0, 3),
                            ),
                          ]
                              : [],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.male,
                            size: 120,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 18,
                        right: 2,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                              child: Text(
                                "Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isTapped2 = true;
                      _isTapped1 = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 10),
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.cyan[900],
                          boxShadow: _isTapped2
                              ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 7,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ]
                              : [],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.female,
                            size: 120,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 5,
                        right: 15,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                              child: Text(
                                "Female",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.cyan[900],
              ),
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 180,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${_valslider}",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "\tcm",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    label: _valslider.round().toString(),
                    divisions: 100,
                    min: 100,
                    max: 250,
                    activeColor: Colors.white,
                    value: _valslider,
                    onChanged: (val) {
                      setState(() {
                        _valslider = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:Colors.cyan[900],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "WEIGHT",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      Text(
                        "${_counter}",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add_circle, size: 65, color: Colors.white),
                            tooltip: 'Increment',
                            onPressed: _incrementCounter,
                          ),
                          SizedBox(width: 15),
                          IconButton(
                            icon: Icon(Icons.remove_circle, size: 65, color: Colors.white),
                            tooltip: 'Decrement',
                            onPressed: _decrementCounter,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:Colors.cyan[900],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "AGE",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      Text(
                        "${_age}",
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add_circle, size: 65, color: Colors.white),
                            tooltip: 'Increment',
                            onPressed: _incrementage,
                          ),
                          SizedBox(width: 15),
                          IconButton(
                            icon: Icon(Icons.remove_circle, size: 65, color: Colors.white),
                            tooltip: 'Decrement',
                            onPressed: _decrementage,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 80,
              color: Colors.cyan[900],
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[900],
                ),
                child: Text(
                  "CALCULATE",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                ),
                onPressed: _bmicalc,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
