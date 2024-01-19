import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Usernamecontroller = TextEditingController();
    TextEditingController Passwordcontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();

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
                    child: Text("Signup", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 120, top: 5),
                    child: Text("Register your account!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.grey.shade400),),
                  ),
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: Usernamecontroller,
                      decoration: InputDecoration(
                        labelText:  "Email *",
                          hintText: "Enter your email_id",
                          prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          )

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: Usernamecontroller,
                      decoration: InputDecoration(
                        labelText:  "Username *",
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
                        labelText:  "Password *",
                          hintText: "Enter a password",
                          suffixIcon: Icon(Icons.visibility_off),
                          prefixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.lightBlueAccent,),
                        Text(" I agree to the ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey.shade400),),
                        Text("Terms & Conditions", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue,
                          decoration: TextDecoration.underline, ),),


                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 260,
                    child: ElevatedButton(onPressed: (){
                    },style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )
                        )
                    ), child: Text("Sign Up"),
                    ),
                  ),

                  SizedBox(height: 10,),
                  Text("Let's Move ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade400),),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left:60),
              child: Row(
                children: [
                  Text("Already have an account? ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
