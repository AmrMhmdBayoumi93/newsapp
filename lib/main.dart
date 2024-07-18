import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/services/news_service.dart';

void main(){
                                // WebView Package

runApp(NewsApp());



//NewsService ns =NewsService(Dio());
//ns.getEgyptGeneralNews();



 
  // or
 // NewsService(Dio()).getEgyptGeneralNews();




  // getNews();
 // getSportsNews();




}


















/*
     final Dio dio = Dio();


     void getNews() async {
      final response = await dio.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=be9f4269650845ceac4a9b1218cdc663');
      print(response);

     }

*/
















/*

 final Dio dio = Dio();

     void getSportsNews() async {
      final response = await dio.get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=be9f4269650845ceac4a9b1218cdc663&category=sports');
      print(response);




*/












 class NewsApp extends StatelessWidget{

NewsApp();


  Widget build(BuildContext context){

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("News App on LocalHost"),

      home:HomeScreen(),
    
    
    
    
    
    );
  }


 } 







