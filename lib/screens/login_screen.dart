
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage_mythgame/widgets/rounded_icon.dart';
import 'package:loginpage_mythgame/widgets/rounded_name_field.dart';

import '../components/components.dart';
import '../widgets/widgets.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  const Upside(imgUrl : "assets/images/login.png",),
                  const PageTitleBar(title : "Register"),
               Padding(
                   padding: EdgeInsets.only(top: 320.0),
                   child: Container(
                   width: double.infinity,
                     decoration: const BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)
                       )
                     ),
                    child: Column(
                        children: [
                         const SizedBox(height: 15,),
                          //iconButton(context),
                          Form(child: Column(
                            children: [
                              const RoundedNameField(),
                              const RoundedInputField(
                                hintText:  "Email",
                                icon: Icons.email,
                              ),
                              const RoundedPasswordField(),
                              const SizedBox(height: 25,),
                              const RoundedButton(
                                text : "Login",

                              ),
                            ],
                          ),),
                       ],
                      ),
                   ),
                 ),
                ],
              ),
            ),
          ),
        )
    );
  }
}


iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(
        imageUrl: "assets/images/facebook.png",
      ),
      SizedBox(height: 20,),
      RoundedIcon(
        imageUrl: "assets/images/google.png",
      ),
      SizedBox(height: 20,),
      RoundedIcon(
        imageUrl: "assets/images/twitter.png",
      ),
    ],
  );
}
