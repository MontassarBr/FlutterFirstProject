// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 45),
                      child: Text("Signup", style: TextStyle(fontSize: 25,)),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: SvgPicture.asset(
                        "assets/icons/signup.svg",
                        width: 200,
                      ),
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepPurple[100],
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,color: Colors.deepPurple),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hint: Text("Email"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.deepPurple[100],
                      ),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Colors.deepPurple),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hint: Text("Password"),
                          suffixIcon: Icon(Icons.visibility ,color: Colors.deepPurple)
                        ),
                      ),
                    ),

                   
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Colors.deepPurple,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 65,
                            vertical: 10,
                          ),

                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account ? ",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent[200]),),
                          GestureDetector(
                            onTap: () {
                                Navigator.pushNamed(context, "/login");
                            },
                            child: Text("login",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent[200],fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                           Text(" Or ",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent[200]),),
                            Expanded(
                            child: Divider(
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.deepPurple ,width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/icons/facebook.svg",width: 30,color: Colors.deepPurple,),
                            )),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.deepPurple ,width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/icons/google-plus.svg",width: 30,color: Colors.deepPurple,),
                            )),
                    
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.deepPurple ,width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset("assets/icons/twitter.svg",width: 30,color: Colors.deepPurple,),
                            )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              child: Image.asset("assets/images/signup_top.png", width: 100),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/login_bottom.png", width: 100),
            ),
          ],
        ),
      ),
    );
  }
}