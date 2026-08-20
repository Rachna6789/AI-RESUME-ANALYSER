import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../services/openai_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  String result = "Upload resume to analyze";

  analyze() async {
    String? url = await StorageService.uploadResume();
    if(url == null) return;

    var res = await AIService.analyzeResume(url);

    setState(() {
      result = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CareerAI Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          ElevatedButton(
              onPressed: analyze,
              child: Text("Upload Resume & Analyze")),
          SizedBox(height:20),
          Expanded(child: SingleChildScrollView(child: Text(result)))
        ]),
      ),
    );
  }
}
