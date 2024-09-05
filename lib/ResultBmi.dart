import 'package:bmi_calculator_app/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class ResultBmi extends StatefulWidget {
  double bmi_result;
  String decision;
  String info;

  ResultBmi(
      {required this.bmi_result, required this.decision, required this.info});
  @override
  State<ResultBmi> createState() => _ResultBmiState();
}

class _ResultBmiState extends State<ResultBmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 30),
              child: Text(
                "Your BMI Result Is",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: KdGaugeView(
                      minSpeed: 0,
                      maxSpeed: 30,
                      speed: widget.bmi_result,
                      duration: Duration(seconds: 2),
                      animate: true,
                      alertSpeedArray: [0, 18, 25],
                      alertColorArray: [
                        Colors.yellow,
                        Colors.green,
                        Colors.red
                      ],
                      unitOfMeasurement: widget.decision,
                      unitOfMeasurementTextStyle:
                          TextStyle(color: Colors.yellow, fontSize: 20),
                      speedTextStyle:
                          TextStyle(color: Colors.white, fontSize: 60),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              widget.info,
              style: TextStyle(fontSize: 26, color: Colors.amber),
            ),
            SizedBox(height: 80,),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              color: Colors.purple,
              height: 60,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Re-CALCULATE",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ],
        ));
    ;
  }
}
