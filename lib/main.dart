import 'package:first_project/core/notifiers.dart';
import 'package:first_project/widget/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark: Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
