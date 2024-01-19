import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              for(int i= 1; i < 5; i++ )
          Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("android/assets/images/profile$i.jpg",
                  height: 65, width: 65,
                  fit: BoxFit.cover,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Neha", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.call_made, color: Color(0xFF075E55), size: 19,),
                        SizedBox(width: 5,),
                        Text("(1) Today, 12:39", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Icon(Icons.call_sharp, color:Color(0xFF075E55),),
              )
      ]
          )
          ),
              for(int i= 5; i < 10; i++ )
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset("android/assets/images/profile$i.jpg",
                              height: 65, width: 65,
                              fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Misha", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Icon(Icons.call_received, color: Colors.red, size: 20,),
                                    SizedBox(width: 5,),
                                    Text("(2) Yesterday, 02:55", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Icon(
                             // CupertinoIcons.videocam_fill,
                              Icons.videocam,
                              color:Color(0xFF075E55), size: 25,),
                          )
                        ]
                    )
                )
            ],
          ),
        ),
      ),
    );
  }
}
