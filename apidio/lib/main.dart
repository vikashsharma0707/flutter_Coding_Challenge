import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stylish API Call',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: ApiPage(),
   
    );
  }
}

class ApiPage extends StatefulWidget {
  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  List<dynamic> users = [];
  bool isLoading = false;

  Future<void> fetchUsers() async {
    setState(() {
      isLoading = true;
    });

    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
      setState(() {
        users = response.data;
      });
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to fetch users")),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Widget buildUserCard(Map<String, dynamic> user) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          user['name'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(user['email']),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio API Call Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: fetchUsers,
            icon: Icon(Icons.cloud_download),
            label: Text('Fetch Users'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : users.isEmpty
                    ? Center(child: Text("No users found"))
                    : ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) =>
                            buildUserCard(users[index]),
                      ),
          ),
        ],
      ),
    );
  }
}
