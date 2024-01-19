import 'package:flutter/material.dart';
import 'package:provider_notesapp/Lets%20Move/SignUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Usernamecontroller = TextEditingController();
    TextEditingController Passwordcontroller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 680,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight:Radius.circular(35), ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      children: [
                        Text("Let's ", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
                        Text("Move", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),)
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 75, top: 5),
                    child: Text("To continue your account!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.grey.shade400),),
                  ),
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: Usernamecontroller,
                      decoration: InputDecoration(
                        labelText: "Username *",
                        hintText: "Enter Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        )

                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: Passwordcontroller,
                      decoration: InputDecoration(
                        labelText: "Password *",
                          hintText: "Enter a password",
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190, top: 8),
                    child: Text("Forgot Password?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 260,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                    },style: ButtonStyle(
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(25),
                         )
                     )
                    ), child: Text("Login"),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 50,
                    width: 260,
                    child: ElevatedButton(onPressed: (){
                    },style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )
                        )
                    ), child: Text("Request Access"),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Text("Let's Move ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade400),),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left:60),
              child: Row(
                children: [
                  Text("Don't have an account? ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("Sign Up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
