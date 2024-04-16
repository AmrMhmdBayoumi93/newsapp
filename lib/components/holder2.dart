// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/components/news_post.dart';
// import 'package:newsapp/components/news_post_widget.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/services/news_service.dart';
// import 'package:newsapp/screens/home_screen.dart';


//     //   **news_post_builder_widget.dart file name


       
//       // Way 1 view data using StatefulWidet and build logic code Manually 
//   // there is another way that  used called FutureBuilder() in a StatelessWidget that save Mobile Resources  



//         // build ui using data reach to u from API by using FutureBuilder()  Widget in Flutter

// class NewsPostBuilderWidget extends StatelessWidget {
  
  
  
  
  
  
//   const NewsPostBuilderWidget();





//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: NewsService(Dio()).getEgyptGeneralNews(),  // attr future take take  Api request
//       builder: (context, snapshot) {               // attr builder take anonymous fun ( con, snapshot){return }
//         if (snapshot.hasData) {
//           return NewsPostWidget(
//             articlesObjList2: snapshot.data ?? [],
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
 
 
 
 












//  /*
 





// //   Widget build(BuildContext context) {
    
    
// //     return isLoading? SliverToBoxAdapter( child: Center(
// //               child: CircularProgressIndicator(),
// //             ),
// //           )
// //         : articlesObjList2.isNotEmpty
// //             ? NewsPostWidget( 
// //               articlesObjList2:articlesObjList2,
// //             )
// //             : SliverToBoxAdapter(
// //                 child: Center(
// //                   child: Text(
// //                     "Oops! There was an error, please try again later...",
// //                     style: TextStyle(
// //                       color: Colors.black87,
// //                       fontSize: 35,
// //                     ),
// //                   ),
// //                 ),
// //               );
// //   }
// // } 
// // 
// // 


// // 
// // 
// // */
 
 
 






 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
           
           
//              }
     
     
     
//        }

