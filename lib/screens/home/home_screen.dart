import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Placeholder(
            color: Colors.grey,
            fallbackHeight: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
        SizedBox(height: 10),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '43.1',
                style: TextStyle(
                    fontSize: 56,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const VerticalDivider(
                thickness: 1,
                color: Colors.grey,
                indent: 5,
                endIndent: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Min: 35.1',
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  Text(
                    'Max: 84.2',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
