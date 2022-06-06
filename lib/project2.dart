import 'package:flutter/material.dart';

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
