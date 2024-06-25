import 'package:app/pages/secondpage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  double _weight = 100;
  double _height = 100;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Center(
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 80,
                child: Text("LOGO"),
                ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 70,
              ),
              Text ("REGISTER",
              style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

                     Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
            
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
             
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(width: 1)),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            //----------------------------------- น้ำหนัก/ส่วนสูง --------------------------------------------
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Weight",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
         Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                  min: 1,
                  max: 100,
                  value: _weight,
                  onChanged: (value) {
                    setState(() {
                      _weight = value;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                ),
                Text(
                  "Height",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Slider(
                  min: 1,
                  max: 100,
                  value: _height,
                  onChanged: (value) {
                    setState(() {
                      _height = value;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 140),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Secondpage()),
                  );
                },
                child: Text("Next"),
              ),
            ),
          ],
        ));
  }
}