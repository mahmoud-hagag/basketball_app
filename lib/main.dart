import 'package:flutter/material.dart';

void main() {
  runApp(basketball());
}

class basketball extends StatefulWidget {
  const basketball({super.key});

  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'Points count',
          ),
        ),
        body: Column(children: [
          Container(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(
                        fontSize: 120,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(
                        fontSize: 120,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point ',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink, minimumSize: Size(100, 40)),
                  onPressed: () {
                    setState(() {
                      teamApoints -= 1;
                    });
                  },
                  child: Text(
                    '-1 for A',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink, minimumSize: Size(100, 40)),
                  onPressed: () {
                    setState(() {
                      teamBpoints = 0;
                      teamApoints = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink, minimumSize: Size(100, 40)),
                  onPressed: () {
                    setState(() {
                      teamBpoints -= 1;
                    });
                  },
                  child: Text(
                    '-1 for B',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              SizedBox(
                width: 15,
              )
            ],
          ),
          Spacer(
            flex: 3,
          ),
        ]),
      ),
    );
  }
}
