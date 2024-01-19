import 'package:flutter/material.dart';
import 'package:button_5/components/MyButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String waitingText = "Waiting...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Pamyeuoi"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              waitingText,
              style: const TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),

            MyButton(
              buttons: [
                CustomButton(
                  id: 1,
                  buttonColor: Colors.blue,
                  content: "Click Me!",
                  onTap: (value) {
                    setState(() {
                      waitingText = value;
                    });
                  },
                  onReset: () {
                      setState(() {
                        waitingText = "Waiting...";
                      });
                    },
                  ),

                const SizedBox(height: 20),

                CustomButton(
                  id: 2,
                  buttonColor: Colors.red,
                  content: "Click Me!",
                  onTap: (value) {
                    setState(() {
                      waitingText = value;

                    });
                  },
                  onReset: () {
                    
                      setState(() {
                        waitingText = "Waiting...";
                      });
                    
                  },
                ),

                const SizedBox(height: 20),

                CustomButton(
                  id: 3,
                  buttonColor: Colors.red,
                  content: "Click Me!",
                  onTap: (value) {
                    setState(() {
                      waitingText = value;
                    });
                  },                 
                  onReset: () {
                    
                      setState(() {
                        waitingText = "Waiting...";
                      });
                  },
                ),

                const SizedBox(height: 20),

                CustomButton(
                  id: 4,
                  buttonColor: Colors.red,
                  content: "Click Me!",
                  onTap: (value) {
                    setState(() {
                      waitingText = value;
                    });
                  },
                  onReset: () {
                      setState(() {
                        waitingText = "Waiting...";
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

