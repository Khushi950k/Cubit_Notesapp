import 'package:flutter/material.dart';
import 'package:provider_notesapp/Tab_Bar/Setting_page.dart';
import 'package:provider_notesapp/Tab_Bar/call.dart';
import 'package:provider_notesapp/Tab_Bar/chat.dart';
import 'package:provider_notesapp/Tab_Bar/status.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({Key? key}) : super(key: key);

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
          appBar:AppBar(
            title: Text("WhatsApp",  style: TextStyle(color: Colors.white),),
            //backgroundColor: Colors.green.shade900,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right:20),
                child: Icon(Icons.camera_alt_sharp, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Icon(Icons.search, color: Colors.white),
              ),
             PopupMenuButton(
               onSelected: (selected){
                 if(selected == 6){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
                 }
               },
                 iconColor: Colors.white,
                 itemBuilder: (context)=>[
               PopupMenuItem(
                   value: 1,
                   child:Text("New group", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
               PopupMenuItem(
                   value: 2,
                   child:Text("New broadcast", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
               PopupMenuItem(
                   value: 3,
                   child:Text("Linked devices", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
               PopupMenuItem(
                   value: 4,
                   child:Text("Starred messages", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
               PopupMenuItem(
                   value: 5,
                   child:Text("Payments", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
               PopupMenuItem(
                   value: 6,
                   child:Text("Settigs", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),))
             ])
            ],
            bottom: TabBar(tabs: [
              Tab(child:Row(
                children: [
                  Text("Chats", style: TextStyle(fontSize: 17, color: Colors.white),),
                  SizedBox(width: 5,),
                  Container(
                    alignment: Alignment.center,
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),child: Text("10", style: TextStyle(color: Color(0xFF075E55)),),
                  )
                ],
              ),),
              Tab(child:Text("Status", style: TextStyle(fontSize: 17, color: Colors.white),),),
              Tab(child:Text("Calls", style: TextStyle(fontSize: 17, color: Colors.white),),)
            ],
              indicatorColor: Colors.white,
              labelColor: Colors.grey,
            )
          ) ,
          body: TabBarView(
            children: [
              Chat(),
              Status(),
              Call()
            ],),

        )
    );
  }
}
