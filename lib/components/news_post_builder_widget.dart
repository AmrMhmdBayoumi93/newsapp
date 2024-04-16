import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/components/news_post.dart';
import 'package:newsapp/components/news_post_widget.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/components/error_message.dart';

      // Way 1 view data using StatefulWidet and build logic code Manually 
  // there is another way that  used called FutureBuilder() in a StatelessWidget that save Mobile Resources  



        // build ui using data reach to u from API by using FutureBuilder()  Widget in Flutter

class NewsPostBuilderWidget extends StatefulWidget {
  
  final String category;          // attribute is here
  const NewsPostBuilderWidget({required this.category});          // Constructor is here

  @override
  State<NewsPostBuilderWidget> createState() => _NewsPostBuilderWidgetState();

  }






class _NewsPostBuilderWidgetState extends State<NewsPostBuilderWidget> {

  var future;   // as a global var              // global variable

  @override
void initState() {
  super.initState();                            //  (category: widget.category)
  future = NewsService(Dio()).getEgyptGeneralNews(category:widget.category);   //  (category: widget.category)

    }
 // make request in initState when init the widget before build
 




  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel >>   (       // imp  <List<ArticleModel >> 
    
      future:  future,                           //  attr future take take request
      builder: (context, snapshot) {               //  attr builder take anonymous fun ( con, snapshot){return }
      
        if (snapshot.hasData) {                 // the NewsPostWidget  بتاعتك
          return NewsPostWidget(
            articlesObjList2: snapshot.data!,
          );
        } 
        
        
        
        else if (snapshot.hasError) {             //error message
          return SliverToBoxAdapter(
            child: Center(
              child: const ErrorMessage( 
                             message:"Oops! There was an error, please try again later..."),
            ),
          );
        } 
        



        
        else {                             // indicator
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
             }

}

