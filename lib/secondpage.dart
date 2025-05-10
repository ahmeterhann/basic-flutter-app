//secondpage.dart
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {



  List<String> checked = [];

  String text1 = "TSH",
      text2 = "T3",
      text3 = "T4",
      text4 = "THYROID ANTIBODY",
      text5 = "THYROGLOBULIN";

  bool checkbox1 = false,
      checkbox2 = false,
      checkbox3 = false,
      checkbox4 = false,
      checkbox5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ahmet Erhan Ergen, 21220030013"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Thyroid Measuraments Entries"),
            CheckboxListTile(
              value: checkbox1,
              onChanged: (value) {
                checked.add(text1);

                setState(() {
                  checkbox1 = value!;
                });
              },
              title: Text(text1),
            ),
            CheckboxListTile(
              value: checkbox2,
              onChanged: (value) {
                checked.add(text2);

                setState(() {
                  checkbox2 = value!;
                });
              },
              title: Text(text2),
            ),
            CheckboxListTile(
              value: checkbox3,
              onChanged: (value) {
                checked.add(text3);
                setState(() {
                  checkbox3 = value!;
                });
              },
              title: Text(text3),
            ),
            CheckboxListTile(
              value: checkbox4,
              onChanged: (value) {
                checked.add(text4);
                setState(() {
                  checkbox4 = value!;
                });
              },
              title: Text(text4),
            ),
            CheckboxListTile(
              value: checkbox5,
              onChanged: (value) {
                checked.add(text5);
                setState(() {
                  checkbox5 = value!;
                });
              },
              title: Text(text5),
            ),
            ElevatedButton(
              child: Text("Create List"),
              onPressed: () {
                Navigator.pop(context, checked);
              },
            )
          ],
        ),
      ),
    );
  }
}
