import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                      child: Text("Login", style: TextStyle(fontSize: 25,)),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: SvgPicture.asset(
                        "assets/icons/login.svg",
                        width: 350,
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
                          prefixIcon: Icon(Icons.email,color: Colors.deepPurple),
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

                    // ignore: deprecated_member_use
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
                          Text("Dont have an account ? ",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent[200]),),
                          Text("Signup",style: TextStyle(fontSize: 15,color: Colors.deepPurpleAccent[200],fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              child: Image.asset("assets/images/main_top.png", width: 100),
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
