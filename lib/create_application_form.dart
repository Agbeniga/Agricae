import 'package:agricei/fund_request_successful.dart';
import 'package:flutter/material.dart';

import 'custom_widget/custom_button.dart';
import 'custom_widget/custom_textfield.dart';

class CreateApplicationFormScreen extends StatefulWidget {
  const CreateApplicationFormScreen({Key? key}) : super(key: key);

  @override
  State<CreateApplicationFormScreen> createState() =>
      _CreateApplicationFormScreenState();
}

class _CreateApplicationFormScreenState
    extends State<CreateApplicationFormScreen> {
  bool? isChecked = false;
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
                  "Application Form",
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
                      "Enter Amount",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                    autoCorrect: true,
                    textInputType: TextInputType.number,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Loan Tenure (Enter duration of loan eg 6 months, 2 years, etc)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                    autoCorrect: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Farm Name",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                    autoCorrect: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Farm Location",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Your Name (in full)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomTextField(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Reason for loan (not more than 200 words)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
                  child: CustomTextField(
                    hintText: "",
                    maxline: 7,
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                          activeColor: const Color(0xff2BB229),
                        ),
                        const Text(
                          "I accept the terms of this loan",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    text: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Apply",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    color: const Color(0xff2BB229),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (_) => FundRequestSuccessScreen()));

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Dear Applicant",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.check_circle,
                                      color: Color(0xff2BB229),
                                      size: 150,
                                    ),
                                    const Text(
                                      "Your loan request was successfull",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      child: CustomButton(
                                        text: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10.0),
                                                child: const Icon(Icons.home),
                                              ),
                                              Text(
                                                "Home",
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                        color: const Color(0xff2BB229),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
