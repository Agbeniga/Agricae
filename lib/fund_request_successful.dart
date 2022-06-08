import 'package:flutter/material.dart';
import 'custom_widget/custom_button.dart';

class FundRequestSuccessScreen extends StatefulWidget {
  const FundRequestSuccessScreen({Key? key}) : super(key: key);

  @override
  State<FundRequestSuccessScreen> createState() =>
      _FundRequestSuccessScreenState();
}

class _FundRequestSuccessScreenState extends State<FundRequestSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                size: 100,
              ),
              const Text(
                "Your loan request was successfull",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomButton(
                  text: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
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
      ),
    );
  }
}
