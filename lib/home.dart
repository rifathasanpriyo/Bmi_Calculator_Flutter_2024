import 'package:bmi_calculator_app/ResultBmi.dart';
import 'package:bmi_calculator_app/logicpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double  height_val = 160;
  bool ismale = true;
  int weight_val=50;
  int age_val=20;
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
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                       setState(() {
                         ismale = true;
                       });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: ismale?  const Color.fromARGB(255, 74, 22, 83) : Color.fromARGB(255, 95, 90, 90),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/man.png",
                            height: 100,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: ismale== false?  const Color.fromARGB(255, 74, 22, 83) : Color.fromARGB(255, 95, 90, 90),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/worker.png",
                            height: 92,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 500,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 95, 90, 90),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "$height_val",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider( 
                    max: 200,
                    min: 100,
                    activeColor: Colors.green,
                    inactiveColor: Colors.black,
                    value: height_val, onChanged: (double value) { 
                      setState(() {
                        height_val=value.roundToDouble();
                      });
                    })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 95, 90, 90),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Age",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                 setState(() {
                                    age_val++;
                                  });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration( 
                                  color: Colors.purple
                                ),
                                child: Icon(Icons.add,color: Colors.white)
                                
                                ),
                            ),
                            Text(
                                "$age_val",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age_val--;
                                  });
                                },
                                child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration( 
                                  color: Colors.purple
                                ),
                                child: Icon(Icons.remove,color: Colors.white)
                                
                                ),
                              ),
                              
                              
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Year",style: TextStyle( 
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 95, 90, 90),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Weight",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight_val++;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration( 
                                  
                                  color: Colors.purple
                                ),
                                child: Icon(Icons.add,color: Colors.white)
                                
                                ),
                            ),
                            Text(
                                "$weight_val",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600),
                              ),
                              GestureDetector(
                                onTap: () {
                                setState(() {
                                  weight_val--;
                                });
                              },
                                child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration( 
                                  color: Colors.purple
                                ),
                                child: Icon(Icons.remove,color: Colors.white)
                                
                                ),
                              ),
                              
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("Kg",style: TextStyle( 
                          color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () { 
           LogicPage ob =LogicPage( 
            height: height_val.toInt(),
            weight: weight_val.toInt(),
           );
           String str =ob.Calculate();
           double bmiss = double.parse(str);
            Navigator.push(context, MaterialPageRoute(builder: (_)=> ResultBmi(
               
                

                bmi_result: bmiss,
                decision: ob.getResult(),
                info: ob.getinfo(),

            )  ));

            },
            color: Colors.purple,
            height: 60,
            minWidth: 300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "CALCULATE",
              style: TextStyle(fontSize: 20,
              color:  Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
