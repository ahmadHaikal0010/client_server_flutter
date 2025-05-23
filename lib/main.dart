import 'package:client_server_flutter/ui/list_data_user_view.dart';
import 'package:client_server_flutter/ui/list_user_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageListDataView()
    );
  }
}
