import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/home_view.dart';

void main() {
 
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}