// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/components/news_post.dart';
// import 'package:newsapp/components/news_post_widget.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/services/news_service.dart';
// import 'package:newsapp/screens/home_screen.dart';

  
//       // Way 1 view data using StatefulWidet and build logic code Manually 
//   // there is another way that  used called FutureBuilder() in a StatelessWidget that save Mobile Resources  

// class NewsPostBuilderWidget extends StatefulWidget {
//   const NewsPostBuilderWidget();

//   @override
//   State<NewsPostBuilderWidget> createState() => _NewsPostBuilderWidgetState();
// }


// class _NewsPostBuilderWidgetState extends State<NewsPostBuilderWidget> {
 
//   List<ArticleModel> articlesObjList2 = [];           // empty list of obj of type Model 
//   bool isLoading = true;      // boolean var



//   @override                    // feature of StatefulWidget
//   void initState() {
//     super.initState();
//     getNews();
//      }



                            // make this method 
//   Future<void> getNews() async {
//     articlesObjList2 = await NewsService(Dio()).getEgyptGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }



//   @override
//   Widget build(BuildContext context) {
    
    
//     return isLoading? SliverToBoxAdapter( child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           )
//         : articlesObjList2.isNotEmpty
//             ? NewsPostWidget( 
//               articlesObjList2:articlesObjList2,
//             )
//             : SliverToBoxAdapter(
//                 child: Center(
//                   child: Text(
//                     "Oops! There was an error, please try again later...",
//                     style: TextStyle(
//                       color: Colors.black87,
//                       fontSize: 35,
//                     ),
//                   ),
//                 ),
//               );
//   }
// }













