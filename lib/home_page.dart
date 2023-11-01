import 'package:flutter/material.dart';
import 'package:lang/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("translating".tr(context)),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "hello_msg".tr(context),
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "hello_person".trWithArg(context, {"name": "Ali Jawad"}),
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      ),
    );
  }
}
