import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week_4/Pages/Signup.dart';
import 'package:week_4/Widgets/TextField.dart';
import 'package:week_4/Widgets/my_button.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
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

              Row(
                children: [
                  Text("dont have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup(),
                          )
                      );
                    },
                    child: Text(
                      "register here!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              MyButton(),

            ],
          ),
        ),
      ),
    );
  }
}
