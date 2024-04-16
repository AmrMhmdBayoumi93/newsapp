// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/components/news_post.dart';
// import 'package:newsapp/components/news_post_widget.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/services/news_service.dart';
// import 'package:newsapp/screens/home_screen.dart';

//       // Way 1 view data using StatefulWidet and build logic code Manually 
//   // there is another way that  used called FutureBuilder() in a StatelessWidget that save Mobile Resources  



//         // build ui using data reach to u from API by using FutureBuilder()  Widget in Flutter

// class NewsPostBuilderWidget extends StatefulWidget {
  
  
//   const NewsPostBuilderWidget();

//   @override
//   State<NewsPostBuilderWidget> createState() => _NewsPostBuilderWidgetState();
// }

// class _NewsPostBuilderWidgetState extends State<NewsPostBuilderWidget> {

//   var future;   // as a global var

//   @override
//   void initState() {
//     super.initState();
//    future = NewsService(Dio()).getEgyptGeneralNews(); // make request in initState when init the widget before build
//   }




  
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder <List<ArticleModel >> (
//       future:  future,                           //  attr future take take request
//       builder: (context, snapshot) {               //  attr builder take anonymous fun ( con, snapshot){return }
//         if (snapshot.hasData) {
//           return NewsPostWidget(
//             articlesObjList2: snapshot.data!,
//           );
//         } else if (snapshot.hasError) {
//           return SliverToBoxAdapter(
//             child: Center(
//               child: Text(
//                 "Oops! There was an error, please try again later...",
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 35,
//                 ),
//               ),
//             ),
//           );
//         } else {
//           return SliverToBoxAdapter(
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       },
//     );
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
//              }
// }
