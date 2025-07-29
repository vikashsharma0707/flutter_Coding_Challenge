import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Flutter Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: StylishFormPage(),
    );
  }
}

class StylishFormPage extends StatefulWidget {
  @override
  _StylishFormPageState createState() => _StylishFormPageState();
}

class _StylishFormPageState extends State<StylishFormPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('✅ Form submitted successfully'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('❌ Please fix the errors'),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Stylish Form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Icon(Icons.person_pin, size: 80, color: Colors.teal),

              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? "Name is required" : null,
                onSaved: (value) => name = value!,
              ),

              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) return "Email is required";
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                onSaved: (value) => email = value!,
              ),

              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) =>
                    value != null && value.length < 6
                        ? "Min 6 characters required"
                        : null,
                onSaved: (value) => password = value!,
              ),

              SizedBox(height: 30),
              ElevatedButton.icon(
                icon: Icon(Icons.send),
                label: Text("Submit"),
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
