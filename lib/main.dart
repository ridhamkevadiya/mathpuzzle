import 'package:flutter/material.dart';
import 'package:mathpuzzle/demo_hemali.dart';
import 'package:mathpuzzle/puzzlepage.dart';
//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
void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String f1 = "f1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Math Puzzle"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                "Math Puzzle",
                style: TextStyle(
                    color: Colors.indigoAccent, fontSize: 20, fontFamily: f1),
              ),
            ),
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return puzzlepage();
                    },));
                  },child: Container(margin: EdgeInsets.only(bottom: 10),child: Text("CONTINUE",style: TextStyle(color: Colors.white),),)),
                  Container(margin: EdgeInsets.only(bottom: 10),child: Text("PUZZLES",style: TextStyle(color: Colors.white)),),
                  Container(child: Text("BY PRO",style: TextStyle(color: Colors.white)),),
                ],
              ),
              width: double.infinity,
              height: 300,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.fill,
                      image: AssetImage('images/blackboard_main_menu.png'))),
            )
          ],
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/background.jpg')),
        ),
      ),
    );
  }
}
