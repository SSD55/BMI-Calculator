import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}

double height = 200;
double weight = 200;
String bmi = "";

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Text("Height"),
              Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text("${height}"),
                    ),
                    Slider(
                        activeColor:Colors.purple,
                        value: height,
                        max: 200,
                        min: 100,
                        onChanged: (newValue) {
                          setState(() {
                            height = newValue;
                          });
                        })
                  ])),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text("Weight\n${weight}"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [IconButton(
                        icon: Icon(
                          Icons.remove,
                        ),
                        iconSize: 30,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            weight -= 1;
                          });
                        },
                      ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                          ),
                          iconSize: 30,
                          color: Colors.blue,
                          onPressed: () {
                            setState(() {
                              weight += 1;
                            });
                          },
                        ),],
                    )


                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text("BMI"),
                  ),
                  CircleAvatar(
                      radius:40,
                      backgroundColor:Colors.limeAccent,

                      child:(
                          IconButton(
                    onPressed: () {
                      setState(() {
                        double x;
                        x = weight / (height * height / 10000);
                        bmi = x.toStringAsFixed(2);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => secondScreen()));
                      });
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                    ),
                    iconSize: 50,
                    color: Colors.green,
                    splashColor: Colors.purple,
                  )
                      ),
                  ),
                ]),
              ),
            ])));
  }
}

class secondScreen extends StatelessWidget {
  secondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      "BMI is\n${bmi}",
                      style: TextStyle(fontSize: 50),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

 


