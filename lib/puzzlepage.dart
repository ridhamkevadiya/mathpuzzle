import 'package:flutter/material.dart';

class puzzlepage extends StatefulWidget {
  const puzzlepage({Key? key}) : super(key: key);

  @override
  State<puzzlepage> createState() => _puzzlepageState();
}

class _puzzlepageState extends State<puzzlepage> {
  String ans= '';
  int cur_level =0;
  List puzzleimg = [
      "p1.png",
      "p2.png",
      "p3.png",
      "p4.png",
      "p5.png",
      "p6.png",
      "p7.png",
      "p8.png",
      "p9.png",
      "p10.png",
      "p11.png",
      "p12.png",
      "p13.png",
      "p14.png",
      "p15.png",
  ];
  List anslist = [
    "10",
    "20",
    "30",
    "40",
    "50",
    "60",
    "70",
    "80",
    "90",
    "100",
    "110",
    "120",
    "130",
    "140",
    "150",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                              width: 40, image: AssetImage('images/skip.png')),
                          Container(
                            child: Text("Puzzle${cur_level+1}"),
                            width: 100,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('images/level_board.png'))),
                          ),
                          Image(
                              width: 40, image: AssetImage('images/hint.png')),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/${puzzleimg[cur_level+1]}'))),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/gameplaybackground.jpg'))),
              )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Text("$ans"),
                            margin: EdgeInsets.all(10),
                            color: Colors.white,
                            width: double.infinity,
                          )),
                      Expanded(
                          child: InkWell(onTap: () {
                            ans = ans.substring(0,ans.length-1);
                            setState(() {

                            });
                          },
                            child: Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        child: Image(image: AssetImage('images/delete.png')),
                      ),
                          )),
                      Expanded(
                          child: InkWell(onTap: () {

                          },
                            child: Container(
                        margin: EdgeInsets.all(8),
                        width: double.infinity,
                        child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                        ),
                      ),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                   get(1),
                   get(2),
                   get(3),
                   get(4),
                   get(5),
                   get(6),
                   get(7),
                   get(8),
                   get(9),
                   get(0),

                    ],
                  ),
                ),
              ],
            ),
            color: Colors.black,
          )),
        ],
      ),
    );
  }

 Widget get(int a)
  {
    return Expanded(
        child: InkWell(onTap: () {
          ans += "$a";
          setState(() {

          });
        },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            child: Text("$a"),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
                border: Border.all(color: Colors.white)),
          ),
        ));
  }

}
