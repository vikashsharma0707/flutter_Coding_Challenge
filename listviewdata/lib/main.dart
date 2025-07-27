import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = List.generate(15, (index) => 'Product ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish ListView',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('🛒 Stylish Product List'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.indigoAccent,
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  title: Text(
                    items[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.indigo[900],
                    ),
                  ),
                  subtitle: Text(
                    'Best selling product of the week!',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.indigo),
                  onTap: () {
                    // Handle onTap if needed
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
