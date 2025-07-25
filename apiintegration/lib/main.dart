import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user.provider.dart';
import 'screens/user.screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UserScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
