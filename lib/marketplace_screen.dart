import 'package:agricei/product_detail_page.dart';
import 'package:agricei/upload_page.dart';
import 'package:flutter/material.dart';

import 'custom_widget/custom_button.dart';

class MarketplaceScreen extends StatelessWidget {
  MarketplaceScreen({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> items = [
    <String, dynamic>{
      "image": "assets/sweet_corn.png",
      "name": "Sweet Corn",
      "price": 700,
      "location": "Epe Lagos",
    },
    <String, dynamic>{
      "image": "assets/normal_corn.png",
      "name": "Normal Corn",
      "price": 150,
      "location": "Epe Lagos",
    },
    <String, dynamic>{
      "image": "assets/cucumber.png",
      "name": "Cucumber",
      "price": 250,
      "location": "Ikorodu Lagos",
    },
    <String, dynamic>{
      "image": "assets/wheat.png",
      "name": "Wheat",
      "price": 40,
      "location": "Epe Lagos",
    },
    <String, dynamic>{
      "image": "assets/chilli_peppers.png",
      "name": "Chilli peppers",
      "price": 100,
      "location": "Epe Lagos",
    },
    <String, dynamic>{
      "image": "assets/sweet_potatoes.png",
      "name": "Sweet Potatoes",
      "price": 200,
      "location": "Ijebu-Ode Ogun",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2BB229),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Your MarketPlace",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => ProductDetail(
                              product: items[index],
                            )));
                  }),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      children: [
                        Hero(
                            tag: items[index]["name"],
                            child: Image.asset(items[index]["image"])),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name:",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(items[index]["name"]),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Price:",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("${items[index]["price"]}"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Location:",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(items[index]["location"]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
                      text: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.loop),
                            ),
                            Text(
                              "Refresh",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      color: const Color(0xff2BB229),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: CustomButton(
                      text: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.file_upload_outlined),
                            ),
                            Text(
                              "Upload",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      color: const Color(0xff2BB229),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => UploadScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
