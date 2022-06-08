import 'package:flutter/material.dart';

import 'custom_widget/custom_button.dart';
import 'custom_widget/custom_textfield.dart';
import 'home_screen.dart';
import 'login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text(
                  "Register",
                  style: TextStyle(
                      color: Color(0xff2BB229),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "Enter your full name",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                    autoCorrect: true,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "Enter your email address",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                    autoCorrect: true,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Phone Number",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "Enter your phone number",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                    autoCorrect: true,
                    textInputType: TextInputType.phone,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    obsecure: true,
                    hintText: "Enter your Password",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    text: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    color: const Color(0xff2BB229),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const HomeScreen()));
                    },
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        InkWell(
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Color(0xff2BB229),
                              fontSize: 15.0,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.all(15.0),
                //   child: Text(
                //     "Or Sign in with",
                //     style: TextStyle(fontSize: 18),
                //   ),
                // ),
                // const Padding(
                //   padding: EdgeInsets.all(15.0),
                //   child: Text(
                //     "Microsoft Account",
                //     style: TextStyle(fontSize: 18),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
