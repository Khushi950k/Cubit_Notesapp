import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        title: Text("Settings",  style: TextStyle(color: Colors.white),),
        ),
      body:SingleChildScrollView(
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
                  child: Image.asset("android/assets/images/profile4.jpg",
                    height: 55, width: 55,
                    fit: BoxFit.cover,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Programmer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,),),
                    SizedBox(height: 4,),
                    Text("Hey there, I am using whatsapp.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54,),)
                  ],
                ),
              )
            ],
          ),
          ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text("Account",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                subtitle:Text("Security notifications, change number",style: TextStyle(fontSize: 14,),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.lock),
                ),
                title: Text("Privacy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle:Text("Block contacts, disappearing messages",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.face),
                ),
                title: Text("Avatar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle:Text("Create, edit, profile photo",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text("Chats",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                subtitle:Text("Theme, wallpapers, chat history",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text("Notifications",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                subtitle:Text("Message, group & call tones",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text("Storage and data",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle:Text("Network usage, auto-download",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.data_usage_sharp),
                ),
                title: Text("Chats",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle:Text("Privacy, Security, Change number",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text("App language",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle:Text("English (device's language)",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline),
                ),
                title: Text("Help",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle:Text("Help cnter, contact us, privacy policy",style: TextStyle(fontSize: 14),),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Icon(Icons.people_alt),
                ),
                title: Text("Invite a Friend.",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Text("from", style: TextStyle(fontSize: 15,),),
                    Text("Facebook", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                  ],
                ),
              )
        ]
          ),
    )
    )
        );
  }
}
