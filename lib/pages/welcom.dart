import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

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
                      child: Text("Welcom", style: TextStyle(fontSize: 25,)),
                    ),
                
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: SvgPicture.asset("assets/icons/chat.svg",width: 350,)),
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
                          padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 10),
                          
                          child: Text("Login" ,style: TextStyle(fontSize: 25,color: Colors.white,),),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 217, 197, 255),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                          
                          child: Text("SignUp" ,style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 147, 38, 166),),),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            Positioned(
              child: Image.asset("assets/images/main_top.png", width: 100),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset("assets/images/main_bottom.png",width: 100,),
            ),
          ],
        ),
      ),
    );
  }
}
