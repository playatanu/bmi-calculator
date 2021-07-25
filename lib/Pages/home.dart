import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weight = new TextEditingController(text: "");
  TextEditingController height = new TextEditingController(text: "");
  var jol = "heloo kaka";
  var output = "Hey Buddy!";
  var myWeight, myHeight;
  var mainbmi;

  void total() {
    setState(() {
      double myWeight = double.parse(weight.text);
      double myHeight = double.parse(height.text);
      double newHeight = (myHeight / 3.281) * (myHeight / 3.281);
      double bmi = myWeight / newHeight;

      mainbmi = bmi.toStringAsFixed(2);

      if (bmi < 18.5) {
        output = "Thinness";
      } else if (bmi < 25) {
        output = "WoW! Normal";
      } else if (bmi > 25) {
        output = "Over Weight";
      } else
        output = "Sorry!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Text(
                '$output',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (output == "WoW! Normal" || output == "Hey Buddy!")
                      ? Colors.green
                      : Colors.red,
                  fontSize: 20,
                ),
              ),
              trailing: Text(
                ' BMI = $mainbmi',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: (output == "WoW! Normal" || mainbmi == null)
                      ? Colors.green
                      : Colors.red,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: weight,
                decoration: InputDecoration(
                  labelText: "Weight (kg)",
                  hintText: "Enter your Weight",
                  //icon: Icon(Icons.monitor_weight_rounded),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: height,
                decoration: InputDecoration(
                  labelText: "Height (feet)",
                  hintText: "Enter your Height",
                ),
              ),
            ),
            TextButton(onPressed: total, child: Text("Calculate")),
            SizedBox(
              height: 130,
            ),
            Center(
              child: SizedBox(
                child: Text(
                  "PLAYATANU",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
