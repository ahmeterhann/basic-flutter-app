//main.dart
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
