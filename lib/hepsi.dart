/*//main.dart
import 'package:flutter/material.dart';
import 'package:final_exam_9_01_2025/secondpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstPage(),
  ));
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> bloodgroup = ["A", "B", "AB", "0"];
  String? selectedBlood, blood;

  List<String> users = [];
  List<String> analysis = [];

  TextEditingController contentcontrol1 = TextEditingController();
  TextEditingController contentcontrol2 = TextEditingController();
  TextEditingController contentcontrol3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ahmet Erhan Ergen, 21220030013"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Thyroid Measuraments Medical Value Entries"),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: contentcontrol1,
              decoration: InputDecoration(
                  labelText: "Name Surname",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: contentcontrol2,
              decoration: InputDecoration(
                  labelText: "ID Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: contentcontrol3,
              decoration: InputDecoration(
                  labelText: "Doctor Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Selected Blood Type"),
            DropdownButton(
                items: bloodgroup.map((val) {
                  return DropdownMenuItem(child: Text(val), value: val);
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selectedBlood = val!;
                  });
                },
                value: selectedBlood),
            ElevatedButton(
              child: Text("Show Analysis List"),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
                if (result != null) {
                  setState(() {
                    users.add(
                        "${contentcontrol1.text} ${contentcontrol2.text} $selectedBlood ${contentcontrol3.text}");

                    analysis = result;
                  });
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.green,
              height: 250,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            "${users[index]}",
                            style:
                            TextStyle(fontSize: 15, color: Colors.black),
                          );
                        },
                      ) ,
                    ),

                    SizedBox(
                        height: 150,
                        child: ListView.builder(
                          itemCount: analysis.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Text(
                              "${analysis[index]}",
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            );
                          },
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



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
}*/
