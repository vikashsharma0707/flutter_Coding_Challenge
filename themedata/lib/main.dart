import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// `true` ⇒ dark theme, `false` ⇒ light theme
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Demo',
      debugShowCheckedModeBanner: false,

      // ✨ Light theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),

      // 🌙 Dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      // runtime में किस theme को apply करना है
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Theme Toggle'),
        ),
        body: Center(
          child: ElevatedButton.icon(
            icon: Icon(_isDark ? Icons.light_mode : Icons.dark_mode),
            label: Text(_isDark ? 'Light Mode' : 'Dark Mode'),
            onPressed: () => setState(() => _isDark = !_isDark),
          ),
        ),
      ),
    );
  }
}
