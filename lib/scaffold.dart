import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
} 

class _MyAppState extends State<MyApp> {
    final TextEditingController textEditingController = TextEditingController();
    double result = 0.00;
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            'Convert App',
          ),
          centerTitle: true,
          elevation: 10,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 Text(
                  "Tshs ${result.toString()}",
                ),
                const SizedBox(
                  height: 10,
                ),
                 TextField(
                  controller: textEditingController,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      print(textEditingController.text);
                      setState(() {
                        
                      result = double.parse(textEditingController.text) * 2800;
                      });
                      print(result.toString());
                    },
                    child: const Text(
                      'Convert',
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
