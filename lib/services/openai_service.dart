import 'dart:convert';
import 'package:http/http.dart' as http;

class AIService {

  static Future<Map> analyzeResume(String resumeUrl) async {

    final response = await http.post(
      Uri.parse("https://api.openai.com/v1/chat/completions"),
      headers: {
        "Authorization": "Bearer YOUR_API_KEY",
        "Content-Type": "application/json"
      },
      body: jsonEncode({
        "model":"gpt-4o-mini",
        "messages":[
          {"role":"user","content":
          "Analyze this resume from url $resumeUrl and give ATS score out of 100, suggestions, and missing skills in JSON format"}
        ]
      }),
    );

    final data = jsonDecode(response.body);
    return data;
  }
}
