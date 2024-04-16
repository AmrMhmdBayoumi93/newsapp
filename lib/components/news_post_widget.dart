
  import 'package:dio/dio.dart';
  import 'package:flutter/material.dart';
  import 'package:newsapp/components/news_post.dart';
  import 'package:newsapp/models/article_model.dart';
  import 'package:newsapp/services/news_service.dart';
                                                                // for build UI



   //  news_post_widget.dart file name
   


  class NewsPostWidget extends StatelessWidget {

   final List<ArticleModel> articlesObjList2 ;     // as an attribute List of Obj
 
  const NewsPostWidget( {required this.articlesObjList2} ); //to init this attribute when calling this Widget Constructor
    





 //3
    @override
    Widget build(BuildContext context) {

 
                    // use ternary operator instead of if Cond
                    // an use SliverList() instead of ListView.builder() on vertical 
                    // we will put SliverList() in CustomScrollView Hierarchy
                    
       
        return SliverList(
          delegate:SliverChildBuilderDelegate(
                        // length of list     ,  anon func(context,index){  return is here }
            childCount: articlesObjList2.length, (context,index){

              return Padding(
                padding: const EdgeInsets.only(bottom:22.0),
                child: NewsPost(
                  articleModel: articlesObjList2 [index]),  // List of Obj of ArticleModel
              );

            },



          ) ,

        ) ; 
        


    }


  }






