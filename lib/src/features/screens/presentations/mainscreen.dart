import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initstatefunction");
  }

  @override
  Widget build(BuildContext context) {
    print("buildfuction");
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("u pushed $counter times"),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      counter += 2;
                    });
                  },
                  child: const Text("Push the button"))
            ],
          ),
        ),
      ),
    );
  }
}

@override
void dispose() {
  dispose();
  print("disposed");
}
