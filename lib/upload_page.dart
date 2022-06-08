import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'custom_widget/custom_button.dart';
import 'custom_widget/custom_textfield.dart';
import 'home_screen.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  bool? isChecked = false;

  String fileName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                const Text(
                  "Upload Product",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product Name",
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
                      "Price per KG (Naira)",
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
                                  "State",
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
                                  "LGA",
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
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Brief description of item (50 words max.)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 0.0),
                  child: CustomTextField(
                    hintText: "",
                    maxline: 5,
                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          height: 40,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(fileName),
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(1.0, 1.0),
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (() async {
                          try {
                            final ImagePicker _picker = ImagePicker();
                            // Pick an image
                            final XFile? image = await _picker.pickImage(
                                source: ImageSource.gallery);
                            if (image != null) {
                              setState(() {
                                fileName = image.name;
                              });
                            }
                          } catch (e) {
                            print(e);
                          }
                        }),
                        child: Container(
                          child: Center(
                            child: const Text(
                              "Browse Files",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0xff764545),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                                offset: Offset(1.0, 1.0),
                                spreadRadius: 0.0,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 10.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: <Widget>[
                //         Checkbox(
                //           value: isChecked,
                //           onChanged: (value) {
                //             setState(() {
                //               isChecked = value;
                //             });
                //           },
                //           activeColor: const Color(0xff2BB229),
                //         ),
                //         const Text(
                //           "I accept the terms of this loan",
                //           style: TextStyle(
                //             fontSize: 15.0,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  padding: EdgeInsets.only(top: 20),
                  child: CustomButton(
                    text: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: const Icon(Icons.upload),
                          ),
                          Text(
                            "Upload",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
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
                                    MediaQuery.of(context).size.height * 0.38,
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Upload Successful",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
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
                                                  "Upload another",
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
                                                            UploadScreen()));
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
                                              padding: EdgeInsets.all(0.0),
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
                                                    style:
                                                        TextStyle(fontSize: 16),
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
