import 'package:flutter/material.dart' show AppBar, BuildContext, Colors, Column, ElevatedButton, MainAxisAlignment, MaterialApp, Row, Scaffold, Size, SizedBox, State, StatefulWidget, Text, TextStyle, VerticalDivider, Widget, runApp;

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter "),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 33),
                    ),
                    Text(
                      "$teamApoints",
                      style: TextStyle(fontSize: 155),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamApoints++;
                        setState(() {});
                        print(teamApoints);
                      },
                      child: Text(
                        "Add 1 Point ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {

                        setState(() {
                         teamApoints= teamApoints+2;
                        });

                      },
                      child: Text(
                        "Add 2 Point ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {setState(() {
                        teamApoints= teamApoints+3;
                      });

                      },
                      child: Text(
                        "Add 3 Point ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 33),
                    ),
                    Text(
                      "$teamBpoints",
                      style: TextStyle(fontSize: 155),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoints +=3;
                        });
                      },
                      child: Text(
                        "Add 3 Point ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 66,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamBpoints=0;
                  teamApoints =0;
                });
              },
              child: Text(
                "Reset ",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
