import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey, width: 3)
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("android/assets/images/profile1.jpg",
                          height: 55, width: 55,
                          fit: BoxFit.cover,),
                      ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Status", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),
                          SizedBox(height: 4,),
                          Text("Today , 12:30 am", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),)
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(Icons.more_vert, color: Color(0xFF075E55),),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child:Text("Recent Updates",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),)
              ),
              for(int i= 1; i < 4; i++ )
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.blue, width: 3)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("android/assets/images/status$i.jpg",
                    height: 55, width: 55,
                    fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shobha", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),
                    SizedBox(height: 4,),
                    Text("Today , 01:30 am", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),)
                  ],
                ),
              ),
              ]
          )
        ),
              Container(
                  alignment: Alignment.centerLeft,
                  child:Text("Viewed Updates",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),)
              ),
              for(int i= 4; i < 7; i++ )
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.blue, width: 3)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset("android/assets/images/status$i.jpg",
                                height: 55, width: 55,
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Neha", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),
                                SizedBox(height: 4,),
                                Text("Ysterday , 01:30 am", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),)
                              ],
                            ),
                          ),
                        ]
                    )
                )
            ],
          ),
        ),
      )
    );
  }
}
