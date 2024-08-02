import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_4/Pages/signin.dart';
import 'package:week_4/Widgets/TextField.dart';

class Signup extends StatelessWidget {
  TextEditingController UsernameController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController confrmPasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/img_1.png',
              height: 100,
              width: 100,
            ),


            //first name
            MyTextField(
                hintText:"Enter your Username",
                obscureText: false,
                controller: UsernameController
            ),
            const SizedBox(height: 10,),
            //last name
            MyTextField(
                hintText:"Enter your Email",
                obscureText: false,
                controller: emailcontroller,
            ),
            const SizedBox(height: 10,),

            //EMAIL
            MyTextField(
              hintText:"Enter your password",
              obscureText: false,
              controller: Passwordcontroller,
            ),
            const SizedBox(height: 10,),
            //PASSWORDS
            MyTextField(
              hintText:"confrm your Password",
              obscureText: false,
              controller: confrmPasswordcontroller,
            ),
            Row(
              children: [
                Text("already have an account?"),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn(),
                        )
                    );
                  },
                  child: Text(
                      "login here!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
    );
  }
}
