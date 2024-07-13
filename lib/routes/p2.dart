import 'package:flutter/material.dart';

class sec extends StatelessWidget {
  static const route = '/sec';

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
    final double bmi = args['bmi'] ?? 0.0;
    final String message = args['message'] ?? 'No message';
    final String message2 = args['messages'] ?? 'No message';

    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "YOUR RESULT",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[900],
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 580,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.cyan[900],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        message2,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 120),
                      Text(
                        "BMI: ${bmi.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 120),
                      Text(
                        message,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity, height: 80
                ,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan[900],
                  ),
                  child: Text(
                    "RECALCULATE",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.pop(context, );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
