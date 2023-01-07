//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(height: 8),
                      Text("Laura Mitiura!",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold) ),
                    ],
                  ),
                  //profile picture
                  Container(
                    padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Icon(Icons.person, color: Colors.white,)
                  )
                ],
              ),
            ),
            SizedBox(height: 25),

            // card
            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  //animation
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple[200],
                  ),
                  SizedBox( width: 20,),
                  // information local
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "How do you fell ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Text("Fill out your medical card right now",
                            style: TextStyle(
                            fontSize: 14
                        ),),
                        SizedBox(height: 12.0),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[300],
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Center(
                            child: Text("Get Started",
                              style: TextStyle(
                                color: Colors.white
                              ),),
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),),

            SizedBox(height: 25,),
            //search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you ?'
                  ),
                ),
              ),
            )

            // categories ( Horizontal lists )

            // doctor list

          ],
        ),
      ),
    );
  }
}
