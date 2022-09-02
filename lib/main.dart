import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Sound level meter'),
          leading: IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
          actions: [
            IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {}),
          ],
        ),
        body: SafeArea(child: SoundLevelMeter()),
        bottomNavigationBar: BottomNavBar(),
      )));
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Save'),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'Microhone'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
        ]);
  }
}

class SoundLevelMeter extends StatelessWidget {
  const SoundLevelMeter({super.key});

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
