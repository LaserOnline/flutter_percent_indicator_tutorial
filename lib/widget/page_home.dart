import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: CircularPercentIndicator(
                  animationDuration: 1000,
                  radius: 150,
                  lineWidth: 40,
                  percent: 0.4,
                  progressColor: Colors.red,
                  backgroundColor: Colors.black,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: const Text(
                    "40%",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            LinearPercentIndicator(
              animationDuration: 1000,
              lineHeight: 40,
              percent: 0.5,
              progressColor: Colors.red,
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
