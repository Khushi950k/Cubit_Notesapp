import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            children: [
              for(int i= 1; i < 14; i++ )
              InkWell(
                onTap:(){},
                child: Container(
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
                        padding: const EdgeInsets.only(left: 10,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Programmer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("Hi, Programmer, how are you?",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,),)
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text("12:15",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.green,),),
                          SizedBox(height: 6,),
                          Container(
                            alignment: Alignment.center,
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("2", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
