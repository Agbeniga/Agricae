import 'package:agricei/fund_provider_screen.dart';
import 'package:agricei/task_screen.dart';
import 'package:agricei/utils/custom_shape.dart';
import 'package:flutter/material.dart';

import 'marketplace_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> activities = [
    <String, dynamic>{
      "name": "Your Market",
      "image": "assets/market.png",
      "route": MarketplaceScreen(),
    },
    <String, dynamic>{
      "name": "Logistics",
      "image": "assets/logistics.png",
      "route": null,
    },
    <String, dynamic>{
      "name": "Disease Detection",
      "image": "assets/disease_detection.png",
      "route": null,
    },
    <String, dynamic>{
      "name": "Funding",
      "image": "assets/park_funds.png",
      "route": FundProviderScreen(),
    },
    <String, dynamic>{
      "name": "Book Keeping",
      "image": "assets/book_keeping.png",
      "route": null,
    },
    <String, dynamic>{
      "name": "View Tasks",
      "image": "assets/task-view.png",
      "route": null,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipPath(
                // clipper: CustomShape(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: EdgeInsets.all(20),
                  color: const Color(0xff2BB229),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.account_box_outlined,
                            color: Colors.white,
                            size: 36,
                          ),
                          Text(
                            "Hello Izu",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Spacer(),
                          const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 36,
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Text(
                                    "Epe, Lagos",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.wb_sunny_sharp,
                                color: Colors.white,
                                size: 40,
                              ),
                            ]),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Today is sunny. Ensure you keep your crops and animals hydrated to avoid heat stress",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Text(
                              "27" + "\u2103",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Task notifications",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) => Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        "Day 14",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Cucumber",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "Application of Urea begins today.",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]),
                                )),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const TaskScreen(),
                            ),
                          );
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                "New Task",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              if (activities[index]["route"] != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        activities[index]["route"],
                                  ),
                                );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "${activities[index]["image"]}",
                                    height: 40,
                                    width: 40,
                                  ),
                                  Text(
                                    "${activities[index]["name"]}",
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                size: 30,
              ),
              label: ""),
        ],
        onTap: (index) {},
      ),
    );
  }
}
