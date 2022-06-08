import 'package:agricei/custom_widget/custom_dropdown.dart';
import 'package:flutter/material.dart';

import 'custom_widget/custom_button.dart';
import 'custom_widget/custom_textfield.dart';
import 'home_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2BB229),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          "Task Setup",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.88,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Category",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomDropdown(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name of crop/livestock",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomDropdown(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Variety",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: CustomDropdown(
                    hintText: "",
                    contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 110,
                        padding: EdgeInsets.only(right: 10.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Start Date",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: CustomTextField(
                                hintText: "",
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                                autoCorrect: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 110,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Harvest Date (expected)",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20.0),
                              child: CustomTextField(
                                hintText: "",
                                contentPadding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                                autoCorrect: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                      text: "*",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                      children: [
                        TextSpan(
                          text:
                              "Harvest date is automatically filled based on information provided",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ]),
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                      text: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Create Task",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      color: const Color(0xff2BB229),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.39,
                                  decoration:
                                      const BoxDecoration(color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Task has been created successfully",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Icon(
                                        Icons.check_circle,
                                        color: Color(0xff2BB229),
                                        size: 150,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 180,
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                                right: 10,
                                              ),
                                              child: CustomButton(
                                                text: const Padding(
                                                  padding: EdgeInsets.all(0.0),
                                                  child: Text(
                                                    "Add another",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                                color: const Color(0xff2BB229),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              TaskScreen()));
                                                },
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                            ),
                                            child: CustomButton(
                                              text: Padding(
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10.0),
                                                      child: Icon(Icons.home),
                                                    ),
                                                    Text(
                                                      "Home",
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              color: const Color(0xff2BB229),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            HomeScreen()));
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
