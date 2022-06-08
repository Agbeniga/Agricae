import 'package:flutter/material.dart';

class FundProviderScreen extends StatelessWidget {
  FundProviderScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> providerList = [
    {
      "name": "ABC Microfinance Bank",
      "image": "assets/abc.png",
    },
    {
      "name": "XYZ Microfinance Bank",
      "image": "assets/xyz.png",
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
          "Select from a list of fund providers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: providerList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    "${providerList[index]["image"]}",
                    height: 65,
                    width: 65,
                  ),
                ),
                Expanded(
                  child: Text(
                    "${providerList[index]["name"]}",
                    style: const TextStyle(
                      fontSize: 24,
                    ),
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
