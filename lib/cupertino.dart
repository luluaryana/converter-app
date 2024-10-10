import 'package:flutter/cupertino.dart';

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
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          leading:  Icon(CupertinoIcons.back),
          middle:  Text('Convert App'),
          backgroundColor: CupertinoColors.systemGrey,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tshs ${result.toString()}",
                    style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                          fontSize: 20,
                          color: CupertinoColors.white,
                          
                        ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                CupertinoTextField(
                  controller: textEditingController,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoButton.filled(
                    onPressed: () {
                      setState(() {
                        result = double.parse(textEditingController.text) * 2800;
                      });
                    },
                    child: const Text('Convert'),
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
