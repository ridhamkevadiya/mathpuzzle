import 'package:flutter/material.dart';

class Demo_hemli extends StatefulWidget {
  const Demo_hemli({Key? key}) : super(key: key);

  @override
  State<Demo_hemli> createState() => _Demo_hemliState();
}

class _Demo_hemliState extends State<Demo_hemli> {
  String str = "";
  String a1 = "", a2 = "";
  int temp=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            child: Text(
              str,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 3),
              color: Colors.grey,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    str = str + "1";
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    str = str + "2";
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    str = str + "3";
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    a1 = str;
                    str = "";
                    temp=1;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: InkWell(onTap: () {
                    setState(() {
                      a1 = str;
                      str = "";
                      temp=2;
                    });
                  },
                    child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    color: Colors.grey,
                ),
                child: Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
                  )),
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                  a2=str;
                  int c=0;
                  if(temp==1){
                    c=int.parse(a1)+int.parse(a2);
                  }else if(temp==2){
                    c=int.parse(a1)-int.parse(a2);
                  }
                  str=c.toString();
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "=",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "3",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "3",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "3",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  color: Colors.grey,
                ),
                child: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
            ],
          ))
        ],
      ),
    );
  }
}
