import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class flutter_flask extends StatelessWidget {
  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('http://your-flask-api-url'));//add flask api url 
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flask Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Flask Demo'),
        ),
        body: Center(
          child: FutureBuilder<String>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text('Response: ${snapshot.data}');
              }
            },
          ),
        ),
      ),
    );
  }
}
